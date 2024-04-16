@Component
struct mySubassembly {
  @BuilderParam mySlot: () => void = this.default

  @Builder
  default() {
    Text("默认")
      .width("70%")
      .aspectRatio(1)
      .textAlign(TextAlign.Center)
      .borderRadius(15)
  }

  build() {
    Column() {
      this.mySlot()
    }
    .width("100%")
    .aspectRatio(1)
    .justifyContent(FlexAlign.Center)
    .border({
      width: 3,
      color: Color.Pink,
      radius: 20
    })
  }
}


@Entry
@Component
struct Index {
  build() {
    Scroll() {
      Column({ space: 20 }) {
        mySubassembly()

        mySubassembly() {
          Image($r("app.media.avatar"))
            .width(200)
        }

        mySubassembly() {
          Image($r("app.media.app_icon"))
            .width(300)
        }
      }
    }
  }
}