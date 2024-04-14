import http from '@ohos.net.http'

@Entry
@Component
struct Page_http {
  @State mytext: string = ""

  aboutToAppear(): void {
    const myhttefun = async () => {
      const myHttpSubstance = await http.createHttp().request(
        "http://172.16.1.30:3000/users",
        {
          method: http.RequestMethod.GET
        }
      )

      this.mytext = JSON.parse(myHttpSubstance.result.toString())[0]["name"]

    }

    myhttefun()

    // myHttpSubstance.then((res) => {
    //   this.mytext = JSON.parse(res.result.toString())[0]["name"]
    // })
  }

  build() {
    Column({ space: 30 }) {
      Text(this.mytext)
        .width("50%")
      Button("发送请求")
        .onClick(() => {
          // .onClick(async () => {
          // promise 写法
          let myhttp = http.createHttp().request(
            "http://172.16.1.30:3000/users", {
            method: http.RequestMethod.GET,
            header: {},
            extraData: {}
          }
          )

          myhttp.then((res) => {
            console.log("text")
            // console.log("test1", `${JSON.parse(res.result[0])}`)
            // console.log("text", this.mytext, JSON.parse(res.result[0]))
            console.log(`状态码:${JSON.stringify(res.responseCode)},响应体:${res.result}`)
            // this.mytext = JSON.parse(res.result[0])["name"]
            // console.log("typeof", typeof JSON.parse(res.result[0]))
            this.mytext = JSON.parse(res.result.toString())[0]["name"]
            console.log("mytext:" + this.mytext)
          })
            .catch((err: Error) => {
              if (!err) {
                console.log("err", JSON.stringify(err))
              }
            })

          // const mytext = await http.createHttp().request(
          //   "http://172.16.1.30:3000/users",
          //   {
          //     method: http.RequestMethod.GET,
          //     header: {},
          //     extraData: {}
          //   },
          // )
          //
          // console.log("mytext:", JSON.parse(mytext.result.toString())[0]['name'])
        })

      Button("打印数据")
        .onClick(() => {
          console.log("mytext:", this.mytext)
        })


    }
    .height("100%").width("100%").justifyContent(FlexAlign.Center)

  }
}