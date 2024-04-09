@Entry
@Component
struct Index {
  @State time: number = Date.now()
  hours: Date = new Date(this.time)

  // hours:number = Date.prototype.getTime()
  // @State hours:number =
  build() {
    Column() {

      Text()
        .fontSize(50)
        .fontWeight(700)
        .onAppear(() => {
          // setInterval(() => {
          //   this.time = Date.now()
          //   console.log("", this.hours)
          // }, 1000)
        })
    }
    .height("100%").width("100%")
    .justifyContent(FlexAlign.Center)

  }
}