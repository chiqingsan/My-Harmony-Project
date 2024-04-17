import { CartGood, goodList } from '../Data/gouwuche'

const MAIN_RED: string = '#f4304b'

const LIGHT_GRAY: string = '#f5f5f5'

const DEEP_GRAY: string = '#bebebe'

@Entry
@Component
export default struct Main {
  @State
  list: CartGood[] = goodList

  build() {
    Column() {
      // 标题
      TitleCom()
      // 内容
      ContentCom({ list: this.list })

      // 支付
      PayCom()
    }
    .height('100%')
    .backgroundColor(LIGHT_GRAY)
  }
}

// 内容区域
@Component
struct ContentCom {
  @Link list: CartGood[]

  build() {
    Scroll() {
      Column() {
        // 支付
        FreightCom()
          .margin(10)

        if (this.list.length) {
          // 商品列表
          Column({ space: 10 }) {
            ListTitleCom()
            // 自营区域
            List() {
              ForEach(this.list,
                (item: CartGood, index: number) => {
                  ListItem() {
                    GoodsListItem({ item: item })
                  }
                  .swipeAction({
                    end: this.deleteTheItem(item.id)
                  })
                }, (item: CartGood, index) => {
                  return item.id
                })
            }
            .divider({ strokeWidth: .5, startMargin: 10, endMargin: 10, color: DEEP_GRAY })
          }
          .backgroundColor(Color.White)
          .margin({ left: 10, right: 10 })
        } else {
          // 空车 商品为空时显示
          EmptyCom()
        }
      }
    }
    .align(Alignment.Top)
    .padding({ bottom: 10 })
    .edgeEffect(EdgeEffect.Spring)
    .layoutWeight(1)
  }

  // 删除商品
  @Builder
  deleteTheItem(id: string) {
    Row() {
      Image($r('app.media.ic_public_delete_filled'))
        .objectFit(ImageFit.Contain)
        .fillColor('#ec6073')
        .margin(10)
        .onClick(() => {
          this.list.splice(this.list.findIndex(v => v.id === id), 1)
        })
    }
    .width(65)
    .height("80%")
    .justifyContent(FlexAlign.Center)
  }
}

// 标题(显示商品种类)
@Component
struct TitleCom {
  build() {
    Row() {
      // 文字
      Stack({ alignContent: Alignment.Bottom }) {
        Text(`购物车(10 )`)
          .height('100%')
        Text('')
          .width(25)
          .height(2)
          .linearGradient({ angle: 90, colors: [[MAIN_RED, 0], [Color.White, 1]] })
      }
      .height('100%')

      // 地址
      Row() {
        Image($r('app.media.ic_yhd_location'))
          .width(15)
          .fillColor(DEEP_GRAY)
        Text('北京市昌平区建材城西路')
          .fontSize(12)
          .fontColor(DEEP_GRAY)
      }
      .height(20)
      .padding({ left: 5, right: 5 })
      .borderRadius(10)
      .backgroundColor(LIGHT_GRAY)

      // 编辑
      Text('编辑')
    }
    .padding({ left: 20, right: 20 })
    .width('100%')
    .height(40)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
  }
}

// 运费（地址下方）
@Component
struct FreightCom {
  // 默认 69 可以由外部传入
  minPrice: number = 69.00
  totalPrice: number = 0

  build() {
    Column() {
      // 运费不够 提示
      Row() {
        Row({ space: 5 }) {
          // 凑单免运费
          Text() {
            Span('凑单')
            Span('免运费')
              .fontColor(MAIN_RED)
          }
          .fontSize(13)
          .fontFamily('medium')

          // 分割线
          Divider()
            .vertical(true)
            .height(8)
            .color(DEEP_GRAY)
            .strokeWidth(1)

          // 运费信息
          Row() {
            Text() {
              Span('还需凑钱 ')
              Span(`¥${(this.minPrice - this.totalPrice).toFixed(2)}`)
                .fontColor(MAIN_RED)
              Span('可免运费')
            }
            .fontSize(13)

            Image($r('app.media.ic_yhd_order_info'))
              .width(15)
          }
        }

        // 按钮
        Button() {
          Row() {
            Text('去凑单')
              .fontColor(Color.White)
              .fontSize(12)
            Image($r('app.media.ic_public_arrow_right'))
              .height(14)
              .width(10)
              .fillColor(Color.White)
          }
          .backgroundColor(MAIN_RED)
          .borderRadius(20)
          .padding({ left: 10, top: 3, bottom: 3, right: 2 })
        }
      }
      .width('100%')

      // 运费足够 提示
      Row({ space: 5 }) {
        Text('运费')
          .backgroundColor(MAIN_RED)
          .fontSize(12)
          .fontColor(Color.White)
          .padding(2)
          .borderRadius(3)
        Divider()
          .vertical(true)
          .height(12)
          .strokeWidth(2)
        Text('已免运费')
          .fontSize(12)
          .fontColor(Color.Gray)
        Image('/common/day08-10/yhd/ic_yhd_order_info.png')
          .width(15)

      }
    }
    .borderRadius(5)
    .height(30)
    .padding({ left: 8, right: 8 })
    .linearGradient({ colors: [['#ffe8ea', 0], [Color.White, 1]] })
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}

// 支付（最下方组件）
@Component
struct PayCom {
  build() {
    Row() {
      Row() {
        CheckboxGroup({
          group: 'cart'
        })
          .selectedColor(MAIN_RED)

        Text('全选')
          .fontSize(12)
      }

      Row() {
        Text('合计:')
          .fontSize(14)
        PriceCom({
          fontColor: Color.Black,
          price: 0
        })
        Button(`入会结算(0)`)
          .fontColor('#ffe3cc')
          .backgroundColor(Color.Black)
          .fontSize(14)
          .margin({ left: 5 })
      }

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .padding({ left: 10, right: 10 })
    .height(48)
    .width('100%')
    .backgroundColor(Color.White)
  }
}

// 价格（根据传入的价格渲染数字）
@Component
struct PriceCom {
  @Prop price: number = 0
  fontColor: ResourceColor = MAIN_RED
  discard: boolean = false

  getSplicePrice() {
    return this.price.toFixed(2)
      .split('.')
  }

  build() {
    Text() {
      Span('¥')
        .fontSize(12)
      Span(this.getSplicePrice()[0]
        .toString())
        .fontSize(this.discard ? 12 : 16)
        .fontWeight(600)
      Span('.')
      Span(this.getSplicePrice()[1] == undefined ? '00' : this.getSplicePrice()[1])
        .fontSize(12)
    }
    .fontColor(this.fontColor)
    .decoration({ type: this.discard ? TextDecorationType.LineThrough : TextDecorationType.None })
  }
}

// 空车：购物车为空显示
@Component
struct EmptyCom {
  build() {
    Column({ space: 20 }) {
      Image($r('app.media.ic_yhd_cart_empty'))
        .width(90)
      Text('购物车竟然是空的~')
        .fontSize(14)
        .fontColor(Color.Gray)
    }
    .width('100%')
    .backgroundColor(Color.White)
    .padding(50)

  }
}

// 列表区域标题：装饰用
@Component
struct ListTitleCom {
  build() {
    Row({ space: 5 }) {
      Image($r('app.media.ic_yhd_logo'))
        .width(12)
      Text('自营')
        .fontWeight(600)
        .fontSize(15)
      Divider()
        .vertical(true)
        .height(10)
        .strokeWidth(2)
      Text('1号会员店提供服务')
        .fontColor(DEEP_GRAY)
        .fontSize(12)
    }
    .alignSelf(ItemAlign.Start)
    .padding({ left: 15, top: 10 })
  }
}

// 列表项：
@Component
struct GoodsListItem {
  @ObjectLink item: CartGood

  build() {
    Row({ space: 10 }) {
      // 左
      Checkbox({
        group: 'cart'
      })
        .shape(CheckBoxShape.CIRCLE)
        .selectedColor(MAIN_RED)


      // 右
      Row({ space: 8 }) {
        // 商品图片
        Image(this.item.good.imageurl)
          .width(90)
          .padding(5)
          .border({ width: .5, color: DEEP_GRAY })
          .borderRadius(10)
        //   信息
        Column() {
          // 标题
          Text(this.item.good.wname)
            .maxLines(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .fontSize(14)
            .fontWeight(400)
            .width('100%')
          // 价格 + 数量
          Row() {
            Column() {
              // 左
              Row() {
                Image($r('app.media.ic_yhd_hyj'))
                  .width(35)
                PriceCom({ price: this.item.good.jdPrice })
              }

              PriceCom({ discard: true, fontColor: DEEP_GRAY, price: this.item.good.jdMainPrice })
            }
            .alignItems(HorizontalAlign.Start)

            Blank()

            // 个数 Counter 内置组件
            Counter() {
              Text(this.item.count.toString())
            }

            .scale({ x: .8, y: .8 })
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
        }
        .height(90)
        .justifyContent(FlexAlign.SpaceBetween)
        .layoutWeight(1)
      }
      .layoutWeight(1)
    }
    .padding({ left: 10, top: 10, bottom: 10 })

  }
}