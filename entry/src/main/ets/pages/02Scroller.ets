@Entry
@Component
struct Index {
  // 实例化滚动条控制器
  scroller: Scroller = new Scroller
  // 控制返回顶部按钮是否显示
  @State isShow: boolean = false

  build() {
    Column() {
      Scroll(this.scroller) {
        Column({ space: 12 }) {

          Image("/image/img/xiaomi/ic_xiaomi_scroll_01.jpg")
          Image("/image/img/xiaomi/ic_xiaomi_scroll_02.jpg")
          Image("/image/img/xiaomi/ic_xiaomi_scroll_03.jpg")
        }
      }
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Fade)
      .height("100%")
      .width("100%")
      .onScroll(() => {
        this.scroller.currentOffset().yOffset > 300 ? this.isShow = true : this.isShow = false
      })

      if (this.isShow) {
        Row() {
          Image("/image/img/xiaomi/ic_jd_rocket.png")
            .width(30)
        }
        .position({
          x: "100%",
          y: "100%"
        })
        .translate({
          x: "-150%",
          y: "-150%"
        })
        .onClick(() => {
          console.log("123")
          this.scroller.scrollEdge(Edge.Top)
        })
        .width(50)
        .aspectRatio(1)
        .borderRadius(99)
        .justifyContent(FlexAlign.Center)
        .backgroundColor("#a9cccccc")
      }
    }
  }
}