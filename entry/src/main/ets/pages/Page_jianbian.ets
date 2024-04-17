@Entry
@Component
struct Page_jianbian {
  @State gradient_a: number = 0
  @State gradient_b: number = 1
  @State myDirection: number = 0
  timer1 = -1

  aboutToAppear(): void {
    this.timer1 = setInterval(() => {
      // 改变方向
      this.myDirection += Math.random() * 10


      // 控制渐变值的范围
      if (this.gradient_a >= 0.25) {
        this.gradient_a -= Math.random() * 0.2;
      } else {
        this.gradient_a += Math.random() * 0.2;
      }

      if (this.gradient_b >= 0.75) {
        this.gradient_b -= Math.random() * 0.2;
      } else {
        this.gradient_b += Math.random() * 0.2;
      }

      console.log("a", this.gradient_a, "b", this.gradient_b);
      console.log("定时器运行中...");
    }, 1000);
  }

  aboutToDisappear(): void {
    clearInterval(this.timer1)
  }

  build() {
    Column() {
      Stack() {
        Row()
          .width("100%")
          .aspectRatio(1)
          .borderRadius(50)
          .margin({ top: 20 })
          .linearGradient({
            angle: this.myDirection,
            colors: [["#ff71acee", this.gradient_a], ["#ffb46aed", this.gradient_b]]
          })
          .animation({
            duration: 1000,
            curve: Curve.Ease
          })

        Column()
          .width("100%")
          .height("100%")
          .blur(250)
      }
      .alignContent(Alignment.Top)
    }
  }
}