import http from '@ohos.net.http'
import { promptAction } from '@kit.ArkUI'


@Entry
@Component
struct Day01_05_SubmitData {
  @State username: string = ''
  @State password: string = ''

  userpost(url: string, username: string, password: string) {
    const req = http.createHttp()
    return req.request(
      url,
      {
        method: http.RequestMethod.POST,
        header: {
          contentType: 'application/json'
        },
        extraData: {
          username: username,
          password: password
        }
      }
    )
  }

  build() {
    Column({ space: 15 }) {
      Text('请求方法和数据提交')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
      TextInput({ text: $$this.username, placeholder: '用户名' })
      TextInput({ text: $$this.password, placeholder: '密码' })
        .type(InputType.Password)

      Button('提交数据')
        .width('100%')
        .onClick(() => {
          // AlertDialog.show({
          //   message: `用户名:${this.username}| 密码:${this.password}`
          // })

          if (this.username.length >= 6 && this.password.length >= 6) {
            this.userpost("https://hmajax.itheima.net/api/register", this.username, this.password)
              .then((res) => {

                const obj = JSON.parse(res.result.toString()) as object
                if (obj["code"] === 10000) {
                  let text = `${obj["message"]},你的UID为${obj["data"]["id"]}`
                  AlertDialog.show({
                    message: `用户名:${this.username}| 密码:${this.password}`
                  })

                  console.log("成功" + JSON.stringify(res.result))
                } else if (obj["code"] === 10005) {
                  let text = `${obj["message"]},请重新注册!`
                  AlertDialog.show({
                    message: `用户名:${this.username}| 密码:${this.password}`
                  })

                  console.log("账号已存在" + JSON.stringify(obj))
                } else {
                  console.log(JSON.stringify(obj["message"]))
                  console.log(JSON.stringify(obj["data"]))
                }
              })
              .catch((err: Error) => {
                if (err) {
                  AlertDialog.show({
                    message: `用户名:${this.username}| 密码:${this.password}`
                  })

                  console.log("失败" + JSON.stringify(err))
                }
              })
          } else {
            promptAction.showToast({
              message: "用户名和密码不正确, 请重新填写"
            })
          }
        })
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}