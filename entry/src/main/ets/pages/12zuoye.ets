// 火车数据（只是渲染，不需要修改）
interface iTicketData {
  id: number
  beginTime: string //结束时间
  endTime: string //开始时间
  totalTime: string //总耗时
  TNum: string //车次
  beginStation: string //起始站点
  endStation: string //终点站点
  price: number //售价
}

@Observed
// 筛选条件数据
export class AddressModel {
  id: number
  text: string
  isSelected: boolean

  constructor(id: number, text: string, isSelected: boolean) {
    this.id = id
    this.text = text
    this.isSelected = isSelected //选中
  }
}


@Entry
@Component
struct Index {
  // 准备出发站点数据
  @State beginList: AddressModel[] = [
    new AddressModel(1, '广州南', false),
    new AddressModel(2, '广州东', false),
    new AddressModel(3, '新塘', false),
    new AddressModel(4, '广州白云', false),
    new AddressModel(5, '广州', false),
    new AddressModel(6, '广州北', false)
  ]
  //记录选中的车站索引
  @State stopIndex: number[] = []
  //记录选中的车站的名字
  @State stopName: string[] = []

  build() {
    Column() {
      // 选中条件显示
      Row() {
        Text('您选中的条件：')
        Text(`${this.stopName}`)
      }
      .width('100%')
      .margin({ top: 10, left: 10 })

      // 出发和达到站搜索条件区域
      Row({ space: 10 }) {
        Scroll() {
          Row() {
            // 出发
            ForEach(this.beginList, (item: AddressModel) => {
              // 给clickHander传数据的时候，记得使用箭头函数包括起来，这样this不会改变
              filterItemComp({ item: item, stopIndex: this.stopIndex })
                .onClick(() => {
                  let temp = this.stopIndex.indexOf(item.id)
                  temp === -1 ? this.stopIndex.push(item.id) : this.stopIndex.splice(temp, 1)
                  temp === -1 ? this.stopName.push(item.text) : this.stopName.splice(temp, 1)
                })
            })

          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .layoutWeight(1)
      }
      .margin({ top: 10 })

      //   车站列表
      listComp({ stopName: this.stopName })
        .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('rgba(0,0,0,0.05)')

  }
}

@Component
export struct filterItemComp {
  @Prop item: AddressModel
  @Prop stopIndex: number[]

  build() {
    Column() {
      // Text(JSON.stringify(this.addressData))
      Text(this.item.text)
        .height(30)
        .border({ width: 1, color: this.stopIndex.indexOf(this.item.id) != -1 ? '#0094ff' : '#fff' })
        .padding({ left: 15, right: 15 })
        .margin(5)
        .borderRadius(10)
        .backgroundColor(Color.White)

    }
  }
}


@Component
export struct listComp {
  // 原始数据，不要直接修改，基于他进行筛选
  sourceData: iTicketData[] = [
    {
      id: 1,
      beginTime: '15:05',
      endTime: '15:36',
      totalTime: '31分',
      TNum: 'G319',
      beginStation: '广州南',
      endStation: '深圳北',
      price: 86
    },
    {
      id: 2,
      beginTime: '15:05',
      endTime: '16:09',
      totalTime: '1时4分',
      TNum: 'G1185',
      beginStation: '广州东',
      endStation: '深圳',
      price: 79.5
    },
    {
      id: 3,
      beginTime: '15:33',
      endTime: '16:09',
      totalTime: '36分',
      TNum: 'G1187',
      beginStation: '新塘',
      endStation: '福田',
      price: 70
    },
    {
      id: 4,
      beginTime: '16::44',
      endTime: '18:42',
      totalTime: '1时58分',
      TNum: 'C6760',
      beginStation: '广州白云',
      endStation: '福海西',
      price: 80
    },
    {
      id: 5,
      beginTime: '15:55',
      endTime: '17:51',
      totalTime: '1时56分',
      TNum: 'C6705',
      beginStation: '广州',
      endStation: '深圳机场',
      price: 78
    },
    {
      id: 6,
      beginTime: '20:34',
      endTime: '22:13',
      totalTime: '1时39分',
      TNum: 'C6707',
      beginStation: '广州北',
      endStation: '沙井西',
      price: 92.5
    }
  ]
  // 默认使用完整的数据
  @State list: iTicketData[] = this.sourceData
  @Prop stopName: string[]

  build() {
    List() {
      ForEach(this.stopName.length === 0 ? this.list : this.list.filter((item) => {
        return this.stopName.indexOf(item.beginStation) != -1
      }), (item: iTicketData) => {
        ListItem() {
          Column() {
            // 车票信息行
            Row() {
              // 其实时间和站点
              Column({ space: 10 }) {
                Text(item.beginTime)
                  .fontSize(20)
                  .fontWeight(500)
                Text(item.beginStation)
              }
              .layoutWeight(1)

              // 车次和总用时
              Column({ space: 5 }) {
                Text(item.TNum)
                  .fontSize(20)
                  .fontWeight(500)
                Divider()
                  .width(80)
                  .color('rgba(0,0,0,0.4)')
                Text(item.totalTime)
              }
              .layoutWeight(1.5)

              // 结束时间和终点站
              Column({ space: 10 }) {
                Text(item.endTime)
                  .fontSize(20)
                  .fontWeight(500)
                Text(item.endStation)
              }
              .layoutWeight(1)

              // 票价
              Column({ space: 10 }) {
                Text() {
                  Span('￥')
                    .fontSize(14)
                  Span(item.price.toString())
                  Span('起')
                    .fontSize(15)
                }
                .fontSize(20)
                .fontWeight(500)
                .fontColor('#FF6600')

                Text('')
              }
              .layoutWeight(1)
            }
            .height(100)
            .width('100%')

            // 横线
            Divider()
              .width('100%')
              .color('rgba(0,0,0,0.4)')
              .padding({ left: 15, right: 15 })

            //  票数量行
            Flex({ wrap: FlexWrap.Wrap }) {
              Text() {
                Span('二等')
                Span(' 6张')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('一等')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('特等')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('商务')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })

              Text() {
                Span('无座')
                Span(' 有票')
                  .fontColor(Color.Green)
              }
              .fontSize(14)
              .width(80)
              .padding({ top: 10 })
            }
            .width('100%')
            .padding({ left: 15, right: 15, top: 10, bottom: 10 })

          }
          .width('100%')
          .backgroundColor(Color.White)
          .border({ width: 1, color: 'rgba(0,0,0,0.1)' })
          .borderRadius(10)
          .margin({ top: 5 })
        }
      })
    }
    .padding(10)
    .scrollBar(BarState.Off)
  }
}