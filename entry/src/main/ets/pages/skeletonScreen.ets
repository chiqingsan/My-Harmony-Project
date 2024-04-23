@Entry
@Component
export struct skeletonScreen {
  @State translateX: number | string = "-100%"
  @Prop length: number | string = 50
  @Prop myhei: number | string = 18

  build() {
    Stack() {
      Text()
        .width(this.length)
        .height(this.myhei)
        .borderRadius(4)
        .backgroundColor("#ffe2e2e2")
      Text()
        .width(this.length)
        .height(this.myhei)
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
            duration: 2000,
            curve: Curve.Linear,
            iterations: -1
          }, () => {
            this.translateX = "100%"
          })
        })
    }
    .clip(true)
  }
}
