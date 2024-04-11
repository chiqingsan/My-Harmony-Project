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
      })
  })

}

@Entry
@Component
struct Index {
  @State str: string = ""

  aboutToAppear(): void {
    myHttp().then((str) => {
      console.log("123")
      this.str = str
    }).catch(() => {
      console.log("catch")
    })
  }

  build() {
    Column() {
      Text(this.str)
        .fontSize(30)
    }
  }
}