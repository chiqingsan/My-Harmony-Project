@Component
struct mycard {
  @Prop mylefttext: string
  @Prop myrighttext: string
  @BuilderParam myleft: (str: string) => void
  @BuilderParam myright: (str: string) => void
  @BuilderParam myintermediateContent: () => void = this.intermediateContent

  @Builder
  intermediateContent() {
    Text("默认内容")
      .height(100)
      .width("100%")
      .textAlign(TextAlign.Center)
  }

  build() {
    Column() {
      Row() {
        this.myleft(this.mylefttext)
        this.myright(this.myrighttext)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ bottom: 5 })

      Divider()
        .width("95%")
        .strokeWidth("2px")

      this.myintermediateContent()
    }
    .backgroundColor("#fff")
    .padding(12)
    .borderRadius(10)
  }
}

@Entry
@Component
struct Index {
  @Builder
  left(str: string) {
    Text(str)
      .fontWeight(700)
  }

  @Builder
  right(str: string) {
    Row() {
      Text(str)
        .fontSize(14)
        .fontColor("#7A7A7A")
      Text(" >")
        .fontColor("#7A7A7A")
    }
  }

  @Builder
  intermediateContent() {
    Text("默认内容")
      .height(100)
      .width("100%")
      .textAlign(TextAlign.Center)
  }

  build() {
    Column({ space: 15 }) {
      mycard({
        mylefttext: "评价 (2000+)",
        myrighttext: "好评率98%",
        myleft: this.left,
        myright: this.right,
        myintermediateContent: this.intermediateContent
      })
      Row({ space: 15 }) {
        mycard({
          mylefttext: "推荐",
          myrighttext: "查看全部",
          myleft: this.left,
          myright: this.right,
          myintermediateContent: this.intermediateContent
        })
          .layoutWeight(1)
        mycard({
          mylefttext: "体验",
          myrighttext: "4条评测",
          myleft: this.left,
          myright: this.right,
          myintermediateContent: this.intermediateContent
        })
          .layoutWeight(1)
      }
      .width("100%")
      .justifyContent(FlexAlign.SpaceBetween)

      Row({ space: 15 }) {
        mycard({
          mylefttext: "推荐",
          myrighttext: "默认",
          myleft: this.left,
          myright: this.right,
          myintermediateContent: this.intermediateContent
        })
          .layoutWeight(1)
        mycard({
          mylefttext: "体验",
          myrighttext: "默认",
          myleft: this.left,
          myright: this.right,
          myintermediateContent: this.intermediateContent
        })
          .layoutWeight(1)
        mycard({
          mylefttext: "体验",
          myrighttext: "默认",
          myleft: this.left,
          myright: this.right,
          myintermediateContent: this.intermediateContent
        })
          .layoutWeight(1)
      }
    }
    .padding(15)
    .border({
      width: 2,
      color: "#000",
      radius: 15
    })
    .backgroundColor("#F1F1F1")
  }
}


