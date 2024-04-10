import * as dcd from '../common/data'


@Entry
@Component
struct Index {
  bottomTabsInfo: dcd.INavDate[] = [
    { title: "首页", icon: $r("app.media.ic_tab_0") },
    { title: "车友圈", icon: $r("app.media.ic_tab_1") },
    { title: "选车", icon: $r("app.media.ic_tab_2") },
    { title: "二手车", icon: $r("app.media.ic_tab_3") },
    { title: "服务", icon: $r("app.media.ic_tab_4") },
  ]
  swiperRes: ResourceStr[] = [
    $r("app.media.swiper01"),
    $r("app.media.swiper02"),
    $r("app.media.swiper03"),
    $r("app.media.swiper04"),
    $r("app.media.swiper05"),
  ]
  // 记录当前tabs的下标, 默认为首页0
  @State bottomTabsIndex: number = 0
  // 记录当前导航条的下标, 默认为精选0
  @State TabNavIndex: number = 0
  // 记录选车页面的导航条下标, 默认为0
  @State navigationBarIndex: number = 0
  // 记录首页滚动条滚动的距离
  @State rollDistance: number = 0
  // 设置回到顶部图片的显示状态
  @State pictureLocation: number = 0
  // 半屏模态显示状态
  @State isShow: boolean = false
  // 创建首页的滚动条控制器
  homePageScrollbar: Scroller = new Scroller()
  // 创建选车页面的列表控制器
  chooseACarController: ListScroller = new ListScroller()

  build() {
    Column() {

      Tabs({ index: 2 }) {

        ForEach(
          this.bottomTabsInfo,
          (item: dcd.INavDate, index) => {
            TabContent() {
              if (index === 0) {
                this.home()
              } else if (index === 1) {
              } else if (index === 2) {
                this.chooseACar()
              } else if (index === 3) {
              } else if (index === 4) {
              }
            }
            .tabBar(this.bottomTabColumn(item, index))
          }
        )
      }
      .scrollable(false)
      .barPosition(BarPosition.End)
      .barHeight(70)
      .onTabBarClick((index) => {
        this.bottomTabsIndex = index
      })
    }
  }

  // 底部tab栏样式
  @Builder
  bottomTabColumn(item: dcd.INavDate, index: number) {
    Column() {
      Column() {
        Image(item.icon)
          .width(25)
      }
      .width(35)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(this.bottomTabsIndex === index ? "#F6CE53" : "#00000000")
      .borderRadius(99)

      Text(item.title)
        .margin(5)
        .fontSize(14)
        .fontWeight(600)
    }
  }

  // 首页
  @Builder
  home() {
    Column() {
      Scroll(this.homePageScrollbar) {
        Column() {
          // 顶部搜索图
          Image($r("app.media.home_top"))
            .width("100%")

          // 顶部导航条部分
          Row() {
            Grid() {
              ForEach(
                dcd.channelList,
                (item: string, index) => {
                  GridItem() {
                    Column() {
                      Text(item)
                        .margin(3)
                        .fontSize(this.TabNavIndex === index ? 16 : 14)
                        .fontWeight(this.TabNavIndex === index ? 700 : 400)
                        .padding({ bottom: 2 })
                        .border({
                          width: { bottom: 2 },
                          color: this.TabNavIndex === index ? "#F8CC5B" : "#00000000"
                        })
                    }

                  }
                  .layoutWeight(1)
                  .onClick(() => {
                    this.TabNavIndex = index
                  })
                }
              )
            }
            .scrollBar(BarState.Off)
            .rowsTemplate("1fr")
            .columnsGap(10)
            .layoutWeight(1)

            Image($r("app.media.ic_nav_icon"))
              .width(25)
              .margin(5)
              .onClick(() => {
                this.isShow = true
              })
              .bindSheet($$this.isShow, this.fullScreenModality, {
                height: SheetSize.FIT_CONTENT
              })
          }
          .height(40)
          .padding({ left: 5, right: 5 })

          // 轮播图部分
          Swiper() {
            ForEach(
              this.swiperRes,
              (item: ResourceStr) => {
                Image(item)
              }

            )
          }
          .width("100%")
          .interval(3000)
          .autoPlay(true)
          .indicator(
            DigitIndicator.dot()
              .itemWidth(3)
              .itemHeight(3)
              .color("#fff")
              .selectedColor("#F6CE56")
              .selectedItemWidth(12)
              .selectedItemHeight(3)
              .bottom(0)
              .right(0)

          )

          // 中间导航条部分
          Grid() {
            ForEach(
              dcd.navList,
              (item: dcd.INavDate) => {
                GridItem() {
                  Column({ space: 5 }) {
                    Image(item.icon)
                      .width("50%")
                    Text(item.title)
                      .margin(5)
                      .fontSize(14)
                  }
                  .width("20%")
                  .height("100%")
                  .justifyContent(FlexAlign.Center)
                }
              }
            )
          }
          .scrollBar(BarState.Off)
          .rowsTemplate("1fr")
          .height(80)

          // 下方内容, 放图片
          Image($r("app.media.home_content_1"))
          Image($r("app.media.home_content_2"))
          Image($r("app.media.home_content_3"))


        }
        .width("100%")

      }
      .onScroll(() => {
        this.rollDistance = this.homePageScrollbar.currentOffset().yOffset
        console.log(this.rollDistance.toString())
      })

    }

    Image($r("app.media.ic_home_to_top"))
      .width(40)
      .position({
        y: "85%",
        x: "100%"
      })
      .translate({
        x: this.rollDistance > 400 ? "-100%" : 0
      })
      .animation({
        duration: 500
      })
      .onClick(() => {
        this.homePageScrollbar.scrollEdge(Edge.Top)
      })
  }

  // 选车
  @Builder
  chooseACar() {
    Column() {
      Image($r("app.media.home_top"))
        .width("100%")


      Stack() {
        List({ scroller: this.chooseACarController }) {

          ListItem() {
            Column() {
              Row() {
                ForEach(
                  ["新车", "新能源", "精准找车"],
                  (item: string) => {
                    Text(item)
                  }
                )
              }
              .height(40)

              // 新车车系
              // Grid() {
              //   ForEach(
              //     dcd.newCarList,
              //     (item: dcd.CarInfo) => {
              //       Column() {
              //         Image(item.icon)
              //         Text(item.name)
              //       }
              //     }
              //   )
              // }

            }
          }

          ForEach(
            dcd.groupCarInfoList,
            (item: dcd.GroupCarInfo) => {
              ListItemGroup({
                space: 3,
                header: this.listHeader(item.initial)
              }) {
                ForEach(
                  item.carList,
                  (brand: dcd.CarInfo) => {
                    ListItem() {
                      Row({ space: 10 }) {
                        Image(brand.icon)
                          .width(50)
                        Text(brand.name)
                          .layoutWeight(1)
                      }
                      .margin({ left: 10 })
                    }
                  }

                )
              }
            }
          )
        }
        .scrollBar(BarState.Off)
        .sticky(StickyStyle.Header)
        .edgeEffect(EdgeEffect.Fade)
        .onScrollIndex((start) => {
          this.navigationBarIndex = start + 1
        })

        AlphabetIndexer({ arrayValue: dcd.navBarKeys, selected: this.navigationBarIndex })
          .onSelect((index) => {
            this.chooseACarController.scrollToIndex(index - 1)
          })
          .usingPopup(true)
          .offset({
            y: "10%"
          })

      }
      .alignContent(Alignment.TopEnd)
    }
    .widthAndHeight()
  }

  // 首页半模态页面
  @Builder
  fullScreenModality() {
    Column() {
      Row() {
        Text("频道管理")
          .fontSize(24)
          .fontWeight(900)
      }
      .width("100%")
      .height(80)
      .justifyContent(FlexAlign.Center)

      Grid() {
        ForEach(
          dcd.channelList,
          (item: string) => {
            GridItem() {
              Text(item)
                .height(40)
            }
            .backgroundColor("#ffd9d9e1")
          }
        )
      }
      .layoutWeight(1)
      .width("100%")
      .padding(10)
      .columnsTemplate("1fr 1fr 1fr")
      .rowsGap(10)
      .columnsGap(10)
    }
    .backgroundColor("#fff")
  }

  // 选车列表, list组头部样式
  @Builder
  listHeader(str: string) {
    Text(str)
      .width("100%")
      .height(30)
      .fontColor("#858689")
      .backgroundColor("#F7F8FC")
      .padding({ left: 10 })
  }

  // 通用宽高样式
  @Styles
  widthAndHeight() {
    .width("100%")
    .height("100%")
  }
}