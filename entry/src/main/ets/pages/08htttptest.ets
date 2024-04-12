import http from '@ohos.net.http';

function myHttp(): Promise<string> {

  return new Promise((resolve, reject) => {
    let httpRequest = http.createHttp()

    httpRequest.request(
      "http://192.168.40.63:9000/",
      {
        method: http.RequestMethod.GET
      }
    ).then((resp: http.HttpResponse) => {
      if (resp.responseCode === 200) {
        console.log("处理完成")
        resolve(JSON.parse(resp.result.toString()))
      } else {
        console.log(JSON.stringify(resp.result));
        reject("查询失败")
      }
    })
      .catch(() => {
        console.log("查询出错")
        reject("catch, 查询出错")
      })
  })

}

@Entry
@Component
struct Index {
  @State str: string = ""
  @State isShow: boolean = false

  aboutToAppear(): void {
    myHttp()
      .then((str) => {
        console.log("then")
        this.str = str
        console.log(this.str)
      })
      .catch(() => {
        console.log("catch,请求出错了")
      })
  }

  build() {
    Column() {
      Text(`返回数据: ${this.str}`)
        .fontSize(20)
        .width("100%")
      Button("点击查询Str")
        .onClick(() => {
          this.isShow = !this.isShow
          console.log("str", this.str)
        })
    }
    .width("100%")
    .height("100%")
  }
}