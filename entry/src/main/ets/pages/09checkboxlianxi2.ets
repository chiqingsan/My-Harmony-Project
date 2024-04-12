interface GoodInfo {
  id: number
  name: string
  img: ResourceStr
  price: number
  count: number
}


@Entry
@Component
struct CartPage {
  // 记录购物车的总价
  @State theTotalCartPrice: number = 0
  @State goodList: GoodInfo[] = [
    {
      id: 1,
      name: 'CP  正大 鲜鸡蛋 30枚 1.59kg 早餐食材 优质蛋白  简装 年货礼盒',
      img: 'https://img10.360buyimg.com/n2/s240x240_jfs/t1/123263/8/18451/99918/5fadf6d2E23e7dd22/8ba19066638ac30c.jpg!q70.jpg.webp',
      price: 25.8,
      count: 2
    },
    {
      id: 2,
      name: '小汤山 北京 西兰花 270g 基地直供新鲜蔬菜',
      img: 'https://img14.360buyimg.com/n2/s240x240_jfs/t1/169777/20/30573/169612/63439079E163426f6/918bf9a3daff559a.jpg!q70.jpg.webp',
      price: 14.9,
      count: 3
    },
    {
      id: 3,
      name: '塞莫诗 丁腈手套加长款30只/包 加厚型 防油防水耐污 白色中号',
      img: 'https://img10.360buyimg.com/n2/s240x240_jfs/t1/98273/24/30795/51511/641a9523F88afbc89/7ec4f5a970449aaf.jpg!q70.jpg.webp',
      price: 39.9,
      count: 3
    },
    {
      id: 4,
      name: '努比亚（nubia）红魔9 Pro+全面屏下游戏手机 16GB+512GB氘锋透明暗夜 骁龙8Gen3 165W快充 5500mAh 5G电竞手机',
      img: 'https://img11.360buyimg.com/n2/s240x240_jfs/t1/154052/34/22342/2570546/65f39e22F565a8c81/9fc2c1c50e7abe57.jpg!q70.jpg.webp',
      price: 5999,
      count: 2
    },
    {
      id: 5,
      name: '炊大皇 炒锅 304不锈钢炒菜锅煎锅 平底不粘炒锅32cm 可立可视盖不挑灶',
      img: 'https://img13.360buyimg.com/n2/s240x240_jfs/t1/195539/22/41621/175614/65f3fdecF15a476ce/c9ba416cbce6d9cc.jpg!q70.jpg.webp',
      price: 139,
      count: 3
    }, {
    id: 6,
    name: '西贝莜面村梅菜扣肉200g 肥瘦相间五花肉酥软不腻 预制菜 新包装',
    img: 'https://img10.360buyimg.com/n2/s240x240_jfs/t1/168770/10/43511/163526/65d45a8aF9e865e6b/66a9d6484d8ab6e3.jpg!q70.jpg.webp',
    price: 29.9,
    count: 4
  }
  ]

  build() {
    Column() {
      // 顶部图片
      Image($r('app.media.cart_top'))
        .width('100%')
      // 商品列表
      List() {


        ForEach(
          this.goodList,
          (item: GoodInfo, index) => {
            ListItem() {
              Row({ space: 10 }) {
                Checkbox({ name: item.name, group: 'shoppingCart' })
                  .selectedColor('#eb4646')
                Image(item.img)
                  .width(100)
                  .borderRadius(10)
                Column() {
                  Text(item.name)
                    .maxLines(2)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Blank()
                  Row() {
                    Text(`¥${item.price}`)
                      .fontColor(Color.Red)
                      .fontSize(20)
                    Blank()

                    Row() {
                      Text("-")
                        .onClick(() => {
                          if (this.goodList[index].count) {
                            item.count--
                            this.goodList[index] = {
                              id: item.id,
                              name: item.name,
                              img: item.img,
                              price: item.price,
                              count: item.count
                            }
                          }
                          console.log("--", JSON.stringify(this.goodList[index]))
                        })
                        .layoutWeight(1)
                        .textAlign(TextAlign.Center)
                      Text(item.count.toString())
                        .fontSize(14)
                      Text("+")
                        .onClick(() => {
                          item.count++
                          this.goodList[index] = {
                            id: item.id,
                            name: item.name,
                            img: item.img,
                            price: item.price,
                            count: item.count
                          }

                          console.log("++", JSON.stringify(this.goodList[index]))
                        })
                        .layoutWeight(1)
                        .textAlign(TextAlign.Center)


                    }
                    .width(65)
                    .justifyContent(FlexAlign.SpaceAround)
                    .padding(2)
                    .border({
                      width: 1,
                      color: "#000",
                      radius: 5
                    })
                  }
                  .width('100%')
                }
                .height('100%')
                .layoutWeight(1)

              }
              .height(110)
              .padding(10)
            }

          }
        )
      }
      .divider({ strokeWidth: 1, startMargin: 40, endMargin: 20 })
      .edgeEffect(EdgeEffect.Fade)

      .layoutWeight(1)

      // 结算
      Row() {
        CheckboxGroup({ group: "shoppingCart" })
          .selectedColor('#d8534c')
          .onChange((obj) => {

            this.theTotalCartPrice = this.goodList.filter((item: GoodInfo) => {
              if (obj.name.indexOf(item.name) != -1) {
                return true
              } else {
                return false
              }
            }).reduce(
              (a: number, b: GoodInfo) => {
                return a + b.price * b.count
              }, 0)


          })

        Text('全选')
        Text() {
          Span('合计')
          Span(`¥${this.theTotalCartPrice}`)
            .fontColor('#d8534c')
        }
        .layoutWeight(1)
        .textAlign(TextAlign.Center)

        Button('结算')
          .type(ButtonType.Normal)
          .height('100%')
          .width(120)
          .backgroundColor('#d8534c')
      }
      .height(50)
      .backgroundColor(Color.White)
      .width('100%')

      // tabbar图片
      Image($r('app.media.cart_bottom'))
        .width('100%')

    }
    .height('100%')

  }
}

