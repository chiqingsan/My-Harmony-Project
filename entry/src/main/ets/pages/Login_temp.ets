import { promptAction } from '@kit.ArkUI'

const username: RegExp = /^[\w-]{4,16}$/
const userPassword: RegExp = /^[a-zA-Z0-9_-]{6}$/


@Entry
@Component
struct Login {
  @State usernameInfo: string = ""
  @State userPasswordInfo: string = ""

  build() {
    Column() {
      // Text('登录页面')
      Row() {
        Image($r("app.media.logo_login"))
          .height(60)
          .margin({ top: 35 })

      }
      .width("100%")
      .height(210)
      .justifyContent(FlexAlign.Center)

      Column({ space: 30 }) {
        TextInput({
          placeholder: '请输入用户名',
          text: this.usernameInfo
        })
          .myTextInput()
          .onChange((val) => {
            this.usernameInfo = val
          })


        TextInput({
          placeholder: '请输入密码',
          text: this.userPasswordInfo
        })
          .myTextInput()
          .type(InputType.Password)
          .onChange((val) => {
            this.userPasswordInfo = val
          })
      }
      .padding({ left: 40, right: 40 })

      Button("登录")
        .margin({ top: 50 })
        .height(44)
        .fontSize(20)
        .width("78%")
        .backgroundColor("#C01D30")
        .onClick(() => {
          if (username.test(this.usernameInfo) && userPassword.test(this.userPasswordInfo)) {
            console.log("登陆成功", this.usernameInfo, this.userPasswordInfo)
            this.usernameInfo = ""
            this.userPasswordInfo = ""
            promptAction.showToast({
              message: "登录成功",
              bottom: "75%"
            })
          } else if (!username.test(this.usernameInfo)) {
            console.log("用户名输入错误")
            promptAction.showToast({
              message: "用户名输入错误",
              bottom: "75%"
            })
          } else if (!userPassword.test(this.userPasswordInfo)) {
            console.log("密码输入错误")
            promptAction.showToast({
              message: "密码输入错误",
              bottom: "75%"
            })
          }
        })
    }
    .width('100%')
    .height('100%')
  }
}

@Extend(TextInput)
function myTextInput() {
  .backgroundColor("#00000000")
  .border({
    width: { bottom: 1 },
    color: "#e6e6e6",
    radius: 0
  })
  .height(60)
  .placeholderColor("#ccc")
  .placeholderFont({
    size: 20
  })
  .caretColor("#333")
  .padding(0)
}