import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {


      this.myRow("跳转到 懂车帝 案例", () => {
        router.pushUrl({
          url: "pages/09checkboxlianxi2"
        })
      })
      this.myRow("跳转到 购物车 案例", () => {
        router.pushUrl({
          url: "pages/dongchedi"
        })
      })
      this.myRow("跳转到 Http 案例", () => {
        router.pushUrl({
          url: "pages/08htttptest"
        })
      })


    }.padding(20)
  }

  @Builder
  myRow(str: string, fn: () => void) {
    Row() {
      Text(str)
        .fontSize(30)
    }
    .onClick(() => {
      fn()

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