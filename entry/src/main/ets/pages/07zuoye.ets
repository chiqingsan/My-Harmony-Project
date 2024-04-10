@Entry
@Component
struct OpenAD {
  @State second: number = 5

  build() {
    Stack() {
      Column() {
        Image($r('app.media.open_content'))
          .width('100%')
      }
      .fullSize()

      if (this.second > 0) {
        this.ad()
      }
    }

  }

  @Builder
  ad() {
    Stack({ alignContent: Alignment.Top }) {
      Image($r('app.media.open_ad'))
        .width('100%')
      Text(`跳过${this.second}`)
        .textExtend()
        .position({ x: '100%', y: 40 })
        .translate({ x: -80 })
        .onClick(() => {
          this.second = 0
        })
    }
    .fullSize()
    .backgroundColor('#fefefe')
    .onAppear(() => {
      let timer = setInterval(() => {
        this.second -= 1

        if (this.second <= 0) {
          console.log("清除定时器")
          clearInterval(timer)
        }
      }, 1000)

    })
  }

  @Styles
  fullSize(){
    .width('100%')
    .height('100%')
  }
}

@Extend(Text)
function textExtend() {
  .backgroundColor(Color.Gray)
  .fontSize(10)
  .padding({ top: 8, bottom: 8, left: 20, right: 20 })
  .fontColor(Color.White)
  .borderRadius(15)
}
