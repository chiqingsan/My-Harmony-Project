@Entry
@Component
struct skeletonScreen {
  @State translateX: number | string = "-100%"
  @Prop length: number = 100

  build() {
    Stack() {
      Text()
        .width(this.length)
        .height(20)
        .borderRadius(4)
        .backgroundColor("#c1c1c1")
      Text()
        .width(this.length)
        .height(18)
        .linearGradient({
          direction: GradientDirection.Right,
          colors: [
            ['rgba(255,255,255,0)', 0], // 0%的位置透明
            ['rgba(255,255,255,0.5)', 0.5], // 50%的位置透明度不透明，则translate在移动此Text的时候会看到闪光
            ['rgba(255,255,255,0)', 1]// 100%的位置透明
          ]
        })
        .translate({
          x: this.translateX
        })
        .onAppear(() => {
          animateTo({
            duration: 1500,
            curve: Curve.Linear,
            iterations: -1
          }, () => {
            this.translateX = "100%"
          })
        })
    }
    .width(100)
    .clip(true)
  }
}
