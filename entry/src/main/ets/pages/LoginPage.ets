import promptAction from '@ohos.promptAction';
import router from '@ohos.router';
import { myuserInfo } from "./MyCenterPage"
import { systemDateTime } from '@kit.BasicServicesKit';

const userInfo: myuserInfo = {
  icon: "",
  name: "",
  account: "",
  landingTime: ""
}

export const storageUserInfo = new LocalStorage(userInfo)


@Entry
@Component
struct LoginPage {
  @State
  mobile: string = 'hmheima'
  @State
  code: string = 'Hmheima%123'

  @Styles
  inputStyle() {
    .margin({ bottom: 15 })
    .height(44)
    .borderRadius(2)
    .backgroundColor('#ffffff')
    .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })
    .padding({ left: 0 })
  }

  build() {

    Scroll() {
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
        Column() {
          Image($r('app.media.logo')).width((120)).height((120))
          Text('面试宝典').fontSize((28)).margin({ bottom: (15) })
          Text('搞定企业面试真题，就用面试宝典').fontSize((14))
            .fontColor('#979797')
        }.padding(20)

        Column() {
          TextInput({ placeholder: '请输入用户名', text: this.mobile })
            .inputStyle()
            .placeholderColor('#C3C3C5')
            .caretColor('#fa711d')
            .onChange(val => this.mobile = val)
          TextInput({ placeholder: '请输入密码', text: this.code, })
            .type(InputType.Password)
            .showPasswordIcon(false)
            .inputStyle()
            .placeholderColor('#C3C3C5')
            .caretColor('#fa711d')
            .onChange(val => this.code = val)

          Button({ type: ButtonType.Normal }) {
            Text('立即登录').fontColor('#ffffff')
          }
          .width('100%')
          .backgroundColor('none')
          .borderRadius((4))
          .height((44))
          .linearGradient({
            direction: GradientDirection.Right,
            colors: [['#fc9c1c', '0%'], ['#fa711d', '100%']]
          })
          .stateEffect(false)
          .onClick(() => {
            // TODO:编写登录逻辑
            storageUserInfo.set("name", "持青伞")
            storageUserInfo.set("icon", "/image/img/touxiang/touxiang1.png")
            storageUserInfo.set("account", "chiqingsan")
            storageUserInfo.set("landingTime", new Date().toLocaleDateString() + "  " + new Date().toLocaleTimeString())

            router.pushUrl({
              url: "pages/MyCenterPage"
            })
          })
        }.padding((30))

        Column() {
          Text('其他登录方式')
            .fontSize((14))
            .fontColor('#979797')
        }
        .padding({ top: (70), bottom: (100) })
      }
    }
  }
}
