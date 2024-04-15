import http from '@ohos.net.http'


function myhttpfun(type: http.RequestMethod, substance: string = ''): Promise<string> {
  return new Promise((resolve, reject) => {
    http.createHttp().request(
      domainName+"/users", {
      method: type,
      header: {},
      extraData: {
        id: Math.floor(Math.random() * 10000000),
        name: substance
      }
    })
      .then((res) => {
        console.log("网络请求成功")
        // console.log("res", JSON.stringify(res.result))
        resolve(JSON.stringify(res.result))
      })
      .catch((err: Error) => {
        if (!err) {
          console.log("网络请求失败")
          console.log("err", JSON.stringify(err))
        }
      })
  })

}

const domainName:string = "http://192.168.40.31:3000"


@Entry
@Component
struct Page_http {
  @State imagePath: string = ""
  @State mytext: string = ""

  aboutToAppear(): void {
    const myhttefun = async () => {
      const myHttpSubstance = await http.createHttp().request(
        domainName+"/users",
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
      if (this.imagePath) {
        Image(this.imagePath)
          .width("80%")
          .height(200)
          .objectFit(ImageFit.Contain)
      }
      Text(this.mytext)
        .fontSize(20)
        .width("50%")
        .margin(20)
      Button("请求数据")
        .onClick(() => {
          // .onClick(async () => {
          // promise 写法
          let myhttp = http.createHttp().request(
            domainName+"/users", {
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
            let myobj: object[] = JSON.parse(res.result.toString())
            this.mytext = myobj[Math.floor(Math.random() * myobj.length)]["name"]
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

      Button("请求图片")
        .onClick(async () => {
          const myimage = await http.createHttp().request(
            domainName+"/images",
            {
              method: http.RequestMethod.GET
            }
          )
          console.log("网络请求图片成功, 状态码: " + myimage.responseCode)

          let temp: object[] = JSON.parse(myimage.result.toString())
          // Math.floor(Math.random() * temp.length)
          this.imagePath = temp[Math.floor(Math.random() * temp.length)]["src"]

          console.log("image:", this.imagePath)

        })

      Button("打印数据")
        .onClick(() => {
          console.log("mytext:", this.mytext)
        })

      Button("Push数据")
        .onClick(() => {
          myhttpfun(http.RequestMethod.POST, "你的名字")
            .then((res) => {
              console.log("增加数据成功")
            })
        })

      Button("Del数据")
        .onClick(async () => {
          const myimage = await http.createHttp().request(
            domainName,
            {
              method: http.RequestMethod.DELETE
            }
          )
          console.log("删除数据成功, 状态码: " + myimage.responseCode)

        })


    }
    .height("100%").width("100%").justifyContent(FlexAlign.Center)

  }
}