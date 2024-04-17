import { http } from '@kit.NetworkKit'

function myhttp(src: string) {
  const request = http.createHttp()
  return request.request(
    src,
    {
      method: http.RequestMethod.GET
    }
  )
}

@Entry
@Component
struct Index {
  aboutToAppear(): void {
    myhttp("http://chiqingsan.cn/takeaway")
      .then((resolve) => {
        this.myData = JSON.parse(resolve.result.toString())
      })
  }

  @State myData: object[] = []

  build() {
    Scroll() {
      Column() {
        // 全部数据
        Text(JSON.stringify(this.myData))
        Divider()
          .strokeWidth(5)
          .margin(20)

        // 筛选数据
        List() {
          ForEach(
            this.myData,
            (item: object) => {
              ListItemGroup({
                header: this.header(item["name"])
              })
              ForEach(
                item["foods"],
                (foods: object) => {
                  ListItem() {
                    Text(foods["name"])
                  }
                }
              )
            }
          )
        }
      }
    }

  }

  @Builder
  header(scu: string) {
    Text(scu)
      .width("100%")
      .backgroundColor("#ccc")
  }
}