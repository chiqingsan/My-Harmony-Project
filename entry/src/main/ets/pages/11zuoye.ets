// 创建数据结构
@Observed
class ReviewData {
  id: number
  name: string
  substance: string
  time: string
  inTheTank: number
  inTheTankBool: boolean
  oppose: number
  opposeBool: boolean

  constructor(id: number, name: string, substance: string, time: string, inTheTank: number, oppose: number) {
    this.id = id
    this.name = name
    this.substance = substance
    this.time = time
    this.inTheTank = inTheTank
    this.oppose = oppose
    this.inTheTankBool = false
    this.opposeBool = false
  }
}

@Entry
@Component
struct Index {
  private myid: number = 1
  @State reviewData: ReviewData[] = [
    new ReviewData(this.myid++, "阿三", "已经用上了, 很舒服", "2024-03-18", 14, 2),
    new ReviewData(this.myid++, "YY", "小爱同学：这太难了", "2024-03-19", 14, 2),
    new ReviewData(this.myid++, "风陵渡客", "我不做了", "2024-03-17", 10, 3),
    new ReviewData(this.myid++, "国足不如你", "什么时候可以接入12306呢", "2024-03-12", 140, 21),
    new ReviewData(this.myid++, "春去春又来", "华为是一家积极向上的企业", "2024-03-10", 100, 0),
  ]

  build() {
    Column() {
      Text("评论列表")
        .fontSize(20)
        .fontWeight(600)
        .width("100%")
        .margin(10)
      Divider()
        .margin({ bottom: 10 })
      List({ space: 15 }) {
        ForEach(
          this.reviewData,
          (item: ReviewData) => {
            ListItem() {
              commentComponent({ item: item })
            }
          }
        )
      }
      .divider({
        strokeWidth: 2,
        startMargin: 65,
        color: "#DFE0E0"
      })
    }
    .padding(10)
    .height("100%")
    .width("100%")
  }
}

@Component
struct commentComponent {
  @ObjectLink item: ReviewData

  build() {
    Row() {
      Column() {
        Image($r("app.media.ic_common_send"))
          .width(50)
          .objectFit(ImageFit.Contain)
          .borderRadius(99)
          .margin(10)
      }

      Column({ space: 5 }) {
        Text(this.item.name)
          .fontColor("#A0A2A4")
        Text(this.item.substance)
          .fontColor("#393F47")
        Row() {
          Text(this.item.time)
            .fontColor("#959697")
            .mytextstyle(14, 300, "#959697")
          Blank()
          Text(`支持(${this.item.inTheTank})`)
            .mytextstyle(14, 400, "#1C731E")
            .margin({ right: 15 })
            .onClick(() => {
              this.item.inTheTankBool = !this.item.inTheTankBool
              this.item.inTheTankBool ? this.item.inTheTank++ : this.item.inTheTank--
            })
          Text(`反对(${this.item.oppose})`)
            .mytextstyle(14, 400, "#D62726")
            .onClick(() => {
              this.item.opposeBool = !this.item.opposeBool
              this.item.opposeBool ? this.item.oppose++ : this.item.oppose--
            })
        }
        .margin({ top: 15 })
        .width("78%")
      }
      .alignItems(HorizontalAlign.Start)
    }
    .width("100%")
  }
}

@Extend(Text)
function mytextstyle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)

}