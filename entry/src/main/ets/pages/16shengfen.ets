import http from '@ohos.net.http';

interface IResponse {
  message: string
  list: string[]
}

interface cityobj {
  pname?: string
  cname?: string
}

function myhttp(parameter: string, method?: http.RequestMethod, body?: string | object) {
  return http.createHttp().request(
    `https://hmajax.itheima.net/api${parameter}`,
    {
      method: method,
      extraData: body,
      expectDataType: http.HttpDataType.OBJECT
    }
  )
}


@Entry
@Component
struct Day03_06_AreaChange {
  @State message: string = '居住地选择';
  @State range: string[][] = [['北京'], ['北京市'], ['东城区']]
  @State selected: number[] = [0, 0, 0]
  // 这部分信息的目的是渲染到页面上
  @State values: string[] = ['北京', '北京市', '东城区']
  // 请求对象
  req: http.HttpRequest = http.createHttp()
  @State showSheet: boolean = false
  timer = -1

  async aboutToAppear(): Promise<void> {
    const province = await myhttp("/province")
    console.log(JSON.stringify(province))
    this.range[0] = province.result["list"]
  }

  build() {
    Column({ space: 10 }) {
      // 标题
      Text(this.message)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .width('100%')
        .margin({ bottom: 20 })
      //
      Row({ space: 10 }) {
        Text('居住地:')
          .fontWeight(FontWeight.Bold)
        Text(this.values.join('/'))
          .layoutWeight(1)
          .fontColor(Color.Gray)
          .onClick(() => {
            this.showSheet = true
          })
        Image($r('app.media.ic_public_arrow_right'))
          .width(20)
      }

      Divider()
      Blank()


    }
    .height('100%')
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .padding(20)
    .bindSheet($$this.showSheet, this.areaSheet(), {
      height: 300
    })
  }

  @Builder
  areaSheet() {
    Column() {
      TextPicker({
        range: this.range,
        selected: $$this.selected,
        // value: $$this.values //
      })
        .canLoop(false)
        .onChange((value, index) => {

          this.selected = (index.toString()).split(",").map(v => parseInt(v))
          // 设置函数防抖
          clearTimeout(this.timer)
          this.timer = setTimeout(async () => {
            console.log("value:", value, "index:", index)
            const res_city = await myhttp("/city", http.RequestMethod.GET, { pname: value[0] } as cityobj)
            this.range[1] = [...res_city.result["list"] as string[]]
            const res_area = await myhttp("/area", http.RequestMethod.GET, {
              pname: value[0],
              cname: value[1] === this.range[1][(index.toString()).split(",")[1]] ? value[1] : this.range[1][0]
            } as cityobj)
            this.range[2] = [...res_area.result["list"] as string[]]
            this.values = [
              value[0],
              this.selected[1] > this.range[1].length ? this.range[1][0] : this.range[1][this.selected[1]],
              this.selected[2] > this.range[2].length ? this.range[2][0] : this.range[2][this.selected[2]],
            ]
          }, 300)

        })

    }
  }
}