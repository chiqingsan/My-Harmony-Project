@Entry
@Component
struct Index {
  @State isShow_a: boolean = false
  @State isShow_b: boolean = false

  build() {
    Column() {
      Button("显示半模态")
        .bindSheet($$this.isShow_a, MyBindSheet1(), {
          // height: 400,
          detents: [(200), (300), (700)]
        })
        .onClick(() => {
          this.isShow_a = !this.isShow_a
        })
      Button("显示全屏模态")
        .bindContentCover($$this.isShow_b, fullScreenModality(() => {
          this.isShow_b = !this.isShow_b
        }))
        .onClick(() => {
          this.isShow_b = !this.isShow_b
        })
    }.height("100%").width("100%")
  }
}


@Builder
function MyBindSheet1() {
  Column({ space: 20 }) {
    Text("分享给好友吧")
    Row() {

      ForEach(
        ["微信", "朋友圈", "微博", "复制链接"],
        (item: string) => {
          Column({ space: 12 }) {
            Image($r("app.media.startIcon"))
              .width("50%")
            Text(item)
          }
          .width("20%")
        }
      )
    }
    .width("100%")
    .justifyContent(FlexAlign.SpaceAround)
  }
  .padding({ top: 25 })
  .width("90%")

  // .backgroundColor("#ccc")
}

@Builder
function fullScreenModality(close: () => void) {
  Column() {
    Text("x")
      .fontSize(40)
      .width(40)
      .aspectRatio(1)
      .onClick(() => {
        close()
      })
      .position({
        x: "100%",
        y: "5%"
      })
      .translate({
        x: "-150%"
      })
  }
  .width("100%")
  .height("100%")
  .backgroundColor("#cce2e2e2")
}