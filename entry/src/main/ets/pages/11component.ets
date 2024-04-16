function randomColor() {
  const r = Math.floor(Math.random() * 255)
  const g = Math.floor(Math.random() * 255)
  const b = Math.floor(Math.random() * 255)
  const a = Math.random()

  return `rgba(${r},${g},${b},${a})`
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      Column({ space: 20 }) {
        myCompone()
          .backgroundColor(randomColor())
          .borderRadius(15)
        myCompone()
          .backgroundColor(randomColor())
          .borderRadius(15)
        myCompone()
          .backgroundColor(randomColor())
          .borderRadius(15)
      }
      .padding(20)
      .border({
        width: 10,
        color: "#ccc",
        radius: 10
      })
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }
}

@Component
struct myCompone {
  @State myNum: number = 0
  @State isShow: boolean = true

  build() {
    Column({ space: 20 }) {
      if (this.isShow) {
        Column({ space: 10 }) {
          Row({ space: 10 }) {
            Text("这个是我的自定义组件")
              .fontSize(20)
            Text(this.myNum.toString())
              .fontSize(24)
          }

          Button("+1")
            .onClick(() => {
              this.myNum++
            })
        }
      }

      Button("折叠/展开")
        .backgroundColor(Color.Red)
        .onClick(() => {
          animateTo({
            duration: 1000,
            curve: Curve.Ease
          }, () => {
            this.isShow = !this.isShow
          })
        })
    }
    .padding(10)
  }
}