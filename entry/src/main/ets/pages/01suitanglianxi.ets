@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller
  private colorArr: string[] = Array.from({ length: 20 })

  build() {

    Column() {
      Grid(this.scroller) {
        ForEach(
          this.colorArr,
          (item: string[], index) => {
            GridItem() {
              Column() {
                Text((index + 1).toString())
              }
            }
            .width("18%")
            .backgroundColor(`rgb(${Math.floor(Math.random() * 255)},${Math.floor(Math.random() * 255)},${Math.floor(Math.random() * 255)})`)
          }
        )
      }
      .scrollBarWidth(200)
      .scrollBarColor("#36D")
      .scrollBar(BarState.On)
      .rowsGap(5)
      .columnsGap(5)
      .height("50%")
      .rowsTemplate("1fr 1fr")
      .padding(12)


      Row() {
        Button("上一页")
          .onClick(() => {
            this.scroller.scrollPage({
              next: false
            })
          })
        Button("下一页")
          .onClick(() => {
            this.scroller.scrollPage({
              next: true
            })
          })
      }

      // test(new test_c("12313"))
      // test({text:"66666"})
    }
  }
}


//
// class test_a {
//   text:string = ""
// }
//
// class test_c {
//   text:string
//
//   constructor(text:string) {
//     this.text = text
//   }
// }
//
// interface test_b {
//   text:string
// }
//
// @Builder
// function test ($$:test_b) {
//   Column(){
//     Text($$.text)
//   }
//
// }