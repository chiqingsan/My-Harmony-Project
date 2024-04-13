import { webview } from '@kit.ArkWeb'

@Entry
@Component
struct Page_Webview {
  private myWebcontro: WebviewController = new webview.WebviewController()

  build() {
    Column() {
      Web({
        src: "https://www.bilibili.com/",
        controller: this.myWebcontro
      })
    }
  }
}