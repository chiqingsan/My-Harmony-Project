import http from '@ohos.net.http'
import { it } from '@ohos/hypium/src/main/interface'

interface newsContent {
  id: number
  title: string
  source: string
  cmtcount: number
  img: string
  time: string
}

interface responseFormat {
  message: string
  data: newsContent[]
}

@Entry
@Component
struct Index {
  @State newsList: newsContent[] = []

  aboutToAppear(): void {
    http.createHttp().request(
      "https://hmajax.itheima.net/api/news", {
      method: http.RequestMethod.GET,
      expectDataType: http.HttpDataType.OBJECT
    }
    ).then((res) => {
      console.log(JSON.stringify(res))
      this.newsList = (res.result as responseFormat).data
      console.log(JSON.stringify(this.newsList))
    })
  }

  build() {

    Column() {
      List() {
        ForEach(
          this.newsList,
          (item: newsContent) => {
            ListItem() {
              ListInfo({ item: item })
            }
            .margin(5)
          }
        )
      }
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#F0F0F0")
  }
}

@Component
struct ListInfo {
  @Prop item: newsContent

  build() {
    Row() {
      Column() {
        Text(this.item.title)
          .width("100%")
          .fontSize(15)

        Row() {
          Text(this.item.source)
            .margin({ right: 8 })
            .mytextsytle(12, 400, "#999")
          Text(`${this.item.cmtcount}评论`)
            .mytextsytle(12, 400, "#999")
          Blank()

          Text(`${this.item.time.split(" ")[0]}`)
            .mytextsytle(12, 400, "#999")
            .margin({ right: 8 })
        }
        .width("100%")
      }
      .layoutWeight(1)
      .height("100%")
      .justifyContent(FlexAlign.SpaceBetween)

      Image(this.item.img)
        .width("33%")
        .backgroundColor("#ccc")
        .height("95%")
        .borderRadius(8)
    }
    .backgroundColor("#fff")
    .height(100)
    .padding(8)
  }
}

@Extend(Text)
function mytextsytle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}
