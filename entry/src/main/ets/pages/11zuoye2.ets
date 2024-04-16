// 创建数据结构
interface reviewStructure {
  id: number
  name: string
  substance: string
  time: string
  inTheTank: number
  inTheTankBool: boolean
  oppose: number
  opposeBool: boolean
}

@Entry
@Component
struct Index {
  // 初始化id
  private myid: number = 1
  // 引入数据
  @State reviewData: reviewStructure[] = [
    {
      id: this.myid++,
      name: "阿三",
      substance: "已经用上了, 很舒服",
      time: "2024-03-18",
      inTheTank: 14,
      inTheTankBool: false,
      oppose: 2,
      opposeBool: false
    },
    {
      id: this.myid++,
      name: "YY",
      substance: "小爱同学：这太难了",
      time: "2024-03-19",
      inTheTank: 14,
      inTheTankBool: false,
      oppose: 2,
      opposeBool: false
    },
    {
      id: this.myid++,
      name: "风陵渡客",
      substance: "我不做了",
      time: "2024-03-17",
      inTheTank: 10,
      inTheTankBool: false,
      oppose: 3,
      opposeBool: false
    },
    {
      id: this.myid++,
      name: "国足不如你",
      substance: "什么时候可以接入12306呢",
      time: "2024-03-12",
      inTheTank: 140,
      inTheTankBool: false,
      oppose: 21,
      opposeBool: false
    },
    {
      id: this.myid++,
      name: "春去春又来",
      substance: "华为是一家积极向上的企业",
      time: "2024-03-10",
      inTheTank: 100,
      inTheTankBool: false,
      oppose: 0,
      opposeBool: false
    },
  ]

  // 设置顶级支持的函数
  inTheTankFun(item: reviewStructure, index: number) {
    if (item.inTheTankBool) {
      this.reviewData[index] = {
        id: item.id,
        name: item.name,
        substance: item.substance,
        time: item.time,
        inTheTank: ++item.inTheTank,
        inTheTankBool: !item.inTheTankBool,
        oppose: item.oppose,
        opposeBool: item.opposeBool
      }
    } else {
      this.reviewData[index] = {
        id: item.id,
        name: item.name,
        substance: item.substance,
        time: item.time,
        inTheTank: --item.inTheTank,
        inTheTankBool: !item.inTheTankBool,
        oppose: item.oppose,
        opposeBool: item.opposeBool
      }
    }
  }

  // 设置点击反对的函数
  opposeFun(item: reviewStructure, index: number) {
    if (item.opposeBool) {
      this.reviewData[index] = {
        id: item.id,
        name: item.name,
        substance: item.substance,
        time: item.time,
        inTheTank: item.inTheTank,
        inTheTankBool: item.inTheTankBool,
        oppose: ++item.oppose,
        opposeBool: !item.opposeBool
      }
    } else {
      this.reviewData[index] = {
        id: item.id,
        name: item.name,
        substance: item.substance,
        time: item.time,
        inTheTank: item.inTheTank,
        inTheTankBool: item.inTheTankBool,
        oppose: --item.oppose,
        opposeBool: !item.opposeBool
      }
    }
  }

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
          (item: reviewStructure, index) => {
            ListItem() {
              commentComponent({
                item: item,
                index: index,
                // 传递2个回调函数到子组件中
                // 注意: 传递的回调函数this指向会出现问题(会指向子组件本身,而不是父组件)},需要使用bind方法来修正this指向!!!
                fn1: this.inTheTankFun.bind(this),
                fn2: this.opposeFun.bind(this)
              })
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
  @Prop item: reviewStructure
  @Prop index: number
  // 设定2个初始化的函数,用来接收传递的回调函数
  fn1 = (item: reviewStructure, index: number) => {
  }
  fn2 = (item: reviewStructure, index: number) => {
  }

  // fn3 : () => void

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
          Text(`${this.item.inTheTankBool ? "已支持" : "支持"}(${this.item.inTheTank})`)
            .mytextstyle(14, 400, "#1C731E")
            .margin({ right: 15 })
            .onClick(() => {
              // 点击支持, 调用支持的回调函数, 用来重写父组件的对象
              this.fn1(this.item, this.index)
            })
          Text(`${this.item.opposeBool ? "已反对" : "反对"}(${this.item.oppose})`)
            .mytextstyle(14, 400, "#D62726")
            .onClick(() => {
              // 点击反对, 调用反对的回调函数, 用来重写父组件的对象
              this.fn2(this.item, this.index)
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