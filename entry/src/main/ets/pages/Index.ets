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
    new jumpToThePage("跳转到 通知 案例", "pages/Page_tongzhi"),
    new jumpToThePage("跳转到 通知2 案例", "pages/Page_tongzhi2"),
    new jumpToThePage("跳转到 渐变 案例", "pages/Page_jianbian"),
    new jumpToThePage("跳转到 web 案例", "pages/Page_Webview"),
    new jumpToThePage("跳转到 电影购票 案例", "pages/Page_MyMovie"),
    new jumpToThePage("跳转到 数据持久化 案例", "pages/Page_PersistentStorage"),
    new jumpToThePage("跳转到 数据持久化2 案例", "pages/Page_chijiuhuatest2"),
    new jumpToThePage("跳转到 记账本 案例", "pages/Bill/BillIndexPage"),
  ]

  onPageShow(): void {
    // 获取页面状态
    let page = router.getState();
    console.log('current index = ' + page.index);
    console.log('current name = ' + page.name);
    console.log('current path = ' + page.path);
  }

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
      .scrollBar(BarState.Off)

    }.padding(20)
  }

  @Builder
  myRow(str: string, path: string) {
    Row() {
      Text(str)
        .fontSize(26)
        .margin({ left: 20 })
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
  .backgroundColor("#8cf0afc8")
  .borderRadius(10)
  .padding(10)
}