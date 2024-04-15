@Entry
@Component
struct AnimationDemo {
  @State scaleX: number = 1
  @State scaleY: number = 1
  @State imgX: string = "0"
  @State imgY: string = "0"

  build() {
    Column({ space: 50 }) {
      // 第二步：将状态变量设置到相关可动画属性接口（width、height、backgroundColor、opacity、scale、rotate、translate）
      Image("/image/img/xiaomi/Swiper_XM_04.jpeg")
        .width(150)// .fontSize(30)
          // .fontWeight(900)
          // .fontColor(Color.Red)
          // .backgroundColor('#e8b66d')
          // .padding(10)
        .borderRadius(20)
        .position({
          x: this.imgX,
          y: this.imgY
        })
        .scale({
          x: this.scaleX,
          y: this.scaleY
        })// .animation({
          //   duration: 1000,
          //   curve: Curve.Ease,
          //   playMode: PlayMode.Alternate,
          //   // iterations: -1
          // })
        .onClick(() => {
          // 点击触发
          animateTo({
            duration: 1000,
            curve: Curve.EaseIn,
            playMode: PlayMode.Alternate,
            iterations: -1
          }, () => {
            this.scaleX = (Math.random() * 2) + .5
            this.scaleY = (Math.random() * 2) + .5
            this.imgX = `${Math.random() * 80}%`
            this.imgY = `${Math.random() * 80}%`
          })

        })
    }
    .width('100%')
    .height('100%')
    .padding(20)

  }

  @Styles
  fullSize() {
    .width('100%')
    .height('100%')
  }
}