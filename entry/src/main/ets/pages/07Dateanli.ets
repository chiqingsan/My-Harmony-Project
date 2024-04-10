


@Entry
@Component
struct Date01 {
  @State time: Date = new Date()
  private weekArr: string[] = ["日", "一", "二", "三", "四", "五", "六"]

  build() {
    Column() {
      Column() {
        Text("持青伞的小时钟:")
          .width("100%")
          .fontColor(Color.White)
          .fontSize(32)
          .padding(22)

        Text(`${this.time.getFullYear()}年 ${this.time.getMonth() + 1} 月 ${this.time.getDate()} 日 周${this.weekArr[this.time.getDay()]}`)// Text('2024年 3 月 24 日 周日')
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text(this.time.getHours().toString().padStart(2, "0"))
              .textStyle()
            Text(this.time.getMinutes().toString().padStart(2, "0"))
              .textStyle()
            Text(this.time.getSeconds().toString().padStart(2, "0"))
              .textStyle()
          }

          Divider()
            .strokeWidth(2)
            .color(Color.Black)
        }
        .padding(10)

        Text('Stay hungry,Stay foolish')
          .fontColor(Color.White)
          .fontSize(18)
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)
    .justifyContent(FlexAlign.Center)
    .onAppear(() => {
      setInterval(() => {
        this.time = new Date()
      }, 1000)
    })
  }
}


@Extend(Text)
function textStyle() {
  .width(100)
  .height(100)
  .backgroundColor('#191919')
  .borderRadius(10)
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(70)
  .fontWeight(900)
}