import { router } from '@kit.ArkUI'

class jumpToThePage {
  title: string
  path: string

  constructor(title: string, path: string) {
    this.title = title
    this.path = path
  }
}

@Entry
@Component
struct Index {
  private myPage: jumpToThePage[] = [
    new jumpToThePage("跳转到 懂车帝 案例", "pages/dongchedi"),
    new jumpToThePage("跳转到 购物车 案例", "pages/09checkboxlianxi2"),
    new jumpToThePage("跳转到 http 案例", "pages/08htttptest"),
    new jumpToThePage("跳转到 通知 案例", "pages/Page_tongzhi"),
    new jumpToThePage("跳转到 渐变 案例", "pages/Page_jianbian"),
    new jumpToThePage("跳转到 web 案例", "pages/Page_Webview"),
    new jumpToThePage("跳转到 video 案例", "pages/Page_video"),
  ]

  build() {
    Column() {


      List({ space: 20 }) {
        ForEach(
          this.myPage,
          (item: jumpToThePage) => {
            ListItem() {
              this.myRow(item.title, item.path)
            }
          }
        )
      }

      Text("热加载测试")
        .fontSize(30)

    }.padding(20)
  }

  @Builder
  myRow(str: string, path: string) {
    Row() {
      Text(str)
        .fontSize(30)
        .textAlign(TextAlign.Center)
    }
    .onClick(() => {
      router.pushUrl({
        url: path,
      },
        router.RouterMode.Single
      )

    })
    .myRowStyle()
  }
}

@Extend(Row)
function myRowStyle() {
  .width("100%")
  .height(70)
  .backgroundColor("#44112233")
  .borderRadius(10)
}