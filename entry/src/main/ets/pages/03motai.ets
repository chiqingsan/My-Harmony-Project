@Entry
@Component
struct Index {
  // 半模态状态
  @State isShow: boolean = false

  @Builder
  semiModalPages() {
    Column() {
      Row() {
        Text("分享给好友")
          .fontSize(18)
          .layoutWeight(1)

        Text("x")
          .fontSize(30)
          .width(50)
          .aspectRatio(1)
          .borderRadius(99)
          .textAlign(TextAlign.Center)
          .backgroundColor("#aacccccc")
          .onClick(() => {
            this.isShow = false
          })
      }
      .width("80%")

      Row() {
        ForEach(["微信", "微博", "QQ", "复制链接"],
          (item: string) => {
            Column() {
              Text(item)
                .width(40)
                .aspectRatio(1)
                .backgroundColor("#aea4a4a4")
                .borderRadius(12)
                .margin(10)
                .textAlign(TextAlign.Center)
              Text(item)
            }
          })
      }
      .width("90%")
      .justifyContent(FlexAlign.SpaceAround)
    }
    .padding({ top: 20, bottom: 30 })
  }

  build() {
    Column() {
      Button("去分享")
        .fontColor("#000")
        .backgroundColor("#2e545454")
        .border({
          width: 1,
          color: "#e065f4f2"
        })// .bindSheet($$this.isShow, this.semiModalPages(), {
          //   detents: [SheetSize.FIT_CONTENT, "100%"],
          //   showClose: false,
          //
          // })
        .bindContentCover($$this.isShow, this.semiModalPages())
        .onClick(() => {
          this.isShow = true
        })

    }
    .width("100%")
    .padding({ top: 30 })
  }
}