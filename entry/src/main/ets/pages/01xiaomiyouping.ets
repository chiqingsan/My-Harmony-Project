// 轮播图路径接口
interface Swiper_imagePath {
  id: number
  imagePath: ResourceStr

}

// 网格内容路径内容接口
interface Nav_imagePath {
  substance: string
  imagePath: ResourceStr

}

// tab栏数据接口
interface iconPath {
  Path_a?: ResourceStr
  Path_b?: ResourceStr
  substance?: string
}

// 购物车数据结构
interface shoppingCartDataStructure {
  imagePath: ResourceStr,
  information: string
  price: number

}


@Extend(Text)
function MyTextStyles(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}

// builder 封装顶部栏
@Builder
function topBar(logo: ResourceStr, searchForContent: string, icon: ResourceStr, numberOfMessages: string) {
  Row() {
    Image(logo)
      .width(40)
    Row() {
      Search({
        placeholder: searchForContent,
        icon: "/image/ic/xiaomi/ic_taobao_search.svg"
      })
        .placeholderColor("#C5C5C5")
        .placeholderFont({ size: 14 })
        .textFont({
          size: 12
        })
        .width("90%")
        .height(30)
        .backgroundColor("#F6F6F6")
        .border({
          width: 1.5,
          color: "#AC8D66"
        })
    }
    .layoutWeight(1)
    .margin({ left: 8, right: 12 })

    Badge({
      count: Number(numberOfMessages),
      maxCount: 99,
      style: { color: "#fff", fontSize: 8, badgeSize: 14, badgeColor: "#E10A0B" }
    }) {
      Image(icon)
        .width(35)
    }

  }
  .justifyContent(FlexAlign.Center)
  .height(50)
  .padding({ left: 10, right: 20 })

}

// builder 封装轮播图组件
@Builder
function SwiperSubassembly(Swiper_imageInfo: object[]) {
  Swiper() {
    ForEach(
      Swiper_imageInfo,
      (item: object) => {
        Image(item['imagePath'])
          .objectFit(ImageFit.Cover)
      }
    )
  }
  .autoPlay(true)
  .height(140)
  .indicator(
    Indicator.dot()
      .itemWidth(8)
      .itemHeight(3)
      .color("#b36a6868")
      .selectedColor(Color.White)
      .selectedItemWidth(14)
      .selectedItemHeight(3)
  )
  .borderRadius(12)
  .margin({ left: 12, right: 12 })
}

// builder 封装内容区
@Builder
function contentAreaComponent(scroller: Scroller, Nav_imageInfo: object[]) {
  Column() {
    Grid(scroller) {
      ForEach(
        Nav_imageInfo,
        (item: object) => {
          GridItem() {
            Column() {
              Image(item['imagePath'])
                .layoutWeight(1)
                .aspectRatio(1)
                .objectFit(ImageFit.Cover)
              Text(item['substance'])
                .fontSize(12)
                .fontWeight(700)
            }
          }
          .width("20%")
        }
      )
    }
    .height(180)
    .rowsTemplate("1fr 1fr")
    .scrollBar(BarState.Off)
    .backgroundColor("#FFFFFF")
    .borderRadius(12)
    .padding({ bottom: 14 })
    .margin({ left: 12, right: 12 })

    // 自定义滚动条
    ScrollBar({
      scroller: scroller,
      direction: ScrollBarDirection.Horizontal,
      state: BarState.On
    }) {
      Row()
        .height("100%")
        .width(15)
        .borderRadius(99)
        .backgroundColor("#DEA558")
    }
    .width(30)
    .height(3)
    .borderRadius(99)
    .backgroundColor("#E4E4E4")
    .offset({
      y: -8
    })
  }
}

@Entry
@Component
struct Index {
  // 当前tabs页面索引
  @State currentIndex: number = 0
  // 当前分类区tabs页面的索引
  @State classifyIndex: number = 0
  // 记录首页的滚动距离
  @State rollDistance: number = 0
  // 记录购物车合计金额
  @State cartTotal: number = 0
  // 设置中间图标模态初始状态
  @State modalState: boolean = false
  private Swiper_imageInfo: Swiper_imagePath[] = [
    { id: 1, imagePath: "/image/img/xiaomi/Swiper_XM_01.jpeg" },
    { id: 2, imagePath: "/image/img/xiaomi/Swiper_XM_02.jpeg" },
    { id: 3, imagePath: "/image/img/xiaomi/Swiper_XM_03.jpeg" },
    { id: 4, imagePath: "/image/img/xiaomi/Swiper_XM_04.jpeg" },
  ]
  private Nav_imageInfo: Nav_imagePath[] = [
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_01.png" },
    { substance: "智能家电", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_02.png" },
    { substance: "小米众筹", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_03.png" },
    { substance: "有品会员", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_04.png" },
    { substance: "有品秒杀", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_05.png" },
    { substance: "原产地", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_06.png" },
    { substance: "生活优选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_07.png" },
    { substance: "手机", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_08.png" },
    { substance: "小米自营", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_09.png" },
    { substance: "茅台酒饮", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_10.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_11.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_12.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_13.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_14.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_15.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_16.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_17.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_18.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_19.png" },
    { substance: "上新精选", imagePath: "/image/img/xiaomi/ic_xiaomi_nav_20.png" },
  ]
  private tab_Info: iconPath[] = [
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_0_selected.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_0.png",
      substance: "首页"
    },
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_1_selected.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_1.png",
      substance: "分类"
    },
    {},
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_2_selected.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_2.png",
      substance: "购物车"
    },
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_3_selected.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_3.png",
      substance: "我的"
    },
  ]
  private shoppingCartData: shoppingCartDataStructure [] = [
    { imagePath: "/image/img/xiaomi/Swiper_XM_01.jpeg", information: "小米澎湃机芯微型发动机强劲马力", price: 34999 },
    { imagePath: "/image/img/xiaomi/Swiper_XM_01.jpeg", information: "小米澎湃机芯微型发动机强劲马力", price: 34999 },
    { imagePath: "/image/img/xiaomi/Swiper_XM_01.jpeg", information: "小米澎湃机芯微型发动机强劲马力", price: 34999 },
    { imagePath: "/image/img/xiaomi/Swiper_XM_01.jpeg", information: "小米澎湃机芯微型发动机强劲马力", price: 34999 },
  ]
  private myPageData_a: Nav_imagePath [] = [
    { imagePath: $r("app.media.ic_01_1"), substance: "我的收藏" },
    { imagePath: $r("app.media.ic_01_2"), substance: "历史记录" },
  ]
  private myPageData_b: Nav_imagePath [] = [
    { imagePath: $r("app.media.ic_01_3"), substance: "平台反馈" },
    { imagePath: $r("app.media.ic_01_4"), substance: "设置" },
  ]
  // 分类页数据
  private classifyTabsInformation: string[] = ["有品推荐", "小米自营", "手机数码", "小米电视", "电脑办公", "大家电", "小家电", "美食酒饮", "家居套装", "日常元素", "服装配饰", "有品海购", "手表首饰", "有品推荐",]
  // 实例化 网格区 滚动条
  private scroller: Scroller = new Scroller()
  // 实例化 首页 滚动条
  private scroll_home: Scroller = new Scroller()
  // 实例化 tabs控制器
  private tabs: TabsController = new TabsController()

  // -------------------- 根组件 -----------------------
  build() {
    Column() {
      Tabs({ index: 0, controller: this.tabs }) {
        ForEach(
          this.tab_Info,
          (item: iconPath, index) => {
            TabContent() {

              if (index === 0) {
                // 首页
                this.home()
              } else if (index === 1) {
                // 分类页
                this.categoryPage()
              } else if (index === 3) {
                // 购物车页面
                this.myCart()
              } else if (index === 4) {
                // 我的页面
                this.myPage()
              }

            }.tabBar(this.tab_Bar(item, index))
          }
        )
      }
      .barHeight(80)
      .barBackgroundColor("#F7F7F7")
      .scrollable(false)
      .barPosition(BarPosition.End)
      .onTabBarClick((val) => {
        this.currentIndex = val
      })

      // 小米底部栏中间的图标
      Image("/image/img/xiaomi/ic_jd_rocket.png")
        .width(50)
        .position({
          x: "50%",
          y: "100%"
        })
        .translate({
          x: "-50%",
          y: "-175%"
        })
        .bindSheet($$this.modalState, this.modalPages, {
          detents: [400, 700, "100%"]
        })
        .onClick(() => {
          // this.currentIndex = 2
          this.modalState = true
        })
    }

  }

  // 点击小火箭出现半模态
  @Builder
  modalPages() {

    Stack() {
      Column() {
        Image("/image/img/shenglilinghua.jpg")
          .opacity(.8)
          .objectFit(ImageFit.Cover)
      }
      .height("100%")
      .padding({ top: 30 })
      .linearGradient({
        angle: 180,
        colors: [["#F2F3F5", 0], ["#ffc2b082", .3], ["#ffd3ad64", 1]]
      })

      Text("发现了一只神里绫华")
        .MyTextStyles(30, 500)

    }
  }

  @Builder
  substanceTabsBar(item: string, index: number) {
    Row() {

      Text(item)
        .textAlign(TextAlign.Center)
        .fontSize(14)
        .fontColor(this.classifyIndex === index ? "#FCF8E6" : "#999999")
        .width(75)
        .height(25)
        .backgroundColor(this.classifyIndex === index ? "#D38E33" : "#fff")
        .borderRadius(99)
    }
    .height(50)

  }

  @Builder
  home() {
    Column() {
      // 顶部栏
      topBar("/image/img/xiaomi/ic_xiaomi_logo.png", "电视", "/image/img/xiaomi/ic_xiaomi_ring.png", "99+")

      Scroll(this.scroll_home) {

        Column({ space: 6 }) {


          // 轮播图
          SwiperSubassembly(this.Swiper_imageInfo)

          // 内容网格区
          contentAreaComponent(this.scroller, this.Nav_imageInfo)

          // 展示区
          Column() {
            Image("/image/img/xiaomi/ic_xiaomi_floor.png")
              .width("100%")
            Image("/image/img/xiaomi/ic_xiaomi_scroll_02.jpg")
              .width("100%")
            Image("/image/img/xiaomi/ic_xiaomi_scroll_03.jpg")
              .width("100%")
          }
        }
        .backgroundColor("#F4F4F4")
        .padding({ top: 14 })
        .border({
          width: { bottom: 2 },
          color: "#E9E9E9"
        })

      }
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Fade)
      .onScroll(() => {
        this.rollDistance = this.scroll_home.currentOffset().yOffset
      })


      if (this.rollDistance > 400) {
        Row() {
          Image("/image/img/xiaomi/ic_jd_rocket.png")
            .width(25)
        }
        .justifyContent(FlexAlign.Center)
        .position({
          x: "100%",
          y: "100%"
        })
        .translate({
          x: "-180%",
          y: "-150%"
        })
        .width(40)
        .aspectRatio(1)
        .borderRadius(99)
        .backgroundColor("#d8d7d7d7")
        .onClick(() => {
          this.scroll_home.scrollEdge(Edge.Top)
        })

      }

    }

  }

  // tab栏样式
  @Builder
  tab_Bar(item: iconPath, index: number) {

    Column({ space: 5 }) {

      if (item.substance) {
        Image(this.currentIndex === index ? item.Path_a : item.Path_b)
          .width(25)
        Text(item.substance)
          .fontSize(this.currentIndex === index ? 12 : 10)
          .fontColor(this.currentIndex === index ? "#918772" : "##363636")
          .fontWeight(this.currentIndex === index ? 600 : 400)
      } else {
      }
    }
    .margin({ bottom: 20 })
  }

  @Builder
  myPage() {
    Column() {
      Row() {
        Image($r("app.media.user_0111"))
          .width(80)
          .margin({ left: 20 })
        Column({ space: 10 }) {
          Text("持青伞")
            .width("100%")
            .MyTextStyles(20, 600, "#2A2A2D")
          Text("暂无个性签名")
            .width("100%")
            .MyTextStyles(14, 500, "#96989C")
        }
        .margin({ left: 10 })
        .layoutWeight(1)

        Image($r("app.media.ic_01_1"))
          .width(60)
      }
      .width("100%")


      Row() {
        ForEach(
          [["0", "发帖"], ["0", "回帖"], ["0", "赞"]],
          (item: string[]) => {
            Column({ space: 6 }) {
              Text(item[0])
                .MyTextStyles(18, 700, "#38393C")
              Text(item[1])
                .MyTextStyles(14, 400, "#A1A4AA")
            }
          }
        )
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width("80%")
      .margin(20)

      Column() {
        ForEach(
          this.myPageData_a,
          (item: Nav_imagePath, index) => {
            Row() {
              Image(item.imagePath)
                .width(40)
              Text(item.substance)
                .MyTextStyles(16, 500, "#3B3C3E")
            }
            .width("100%")
            .padding(10)

            if (index < this.myPageData_a.length - 1) {
              Divider()
                .width("90%")
                .color("#ccc")
            }
          }
        )
      }
      .width("100%")
      .backgroundColor("#fff")
      .borderRadius(12)
      .margin({ bottom: 15 })

      Column() {
        ForEach(
          this.myPageData_b,
          (item: Nav_imagePath, index) => {
            Row() {
              Image(item.imagePath)
                .width(40)
              Text(item.substance)
                .MyTextStyles(16, 500, "#3B3C3E")
            }
            .width("100%")
            .padding(10)

            if (index < this.myPageData_a.length - 1) {
              Divider()
                .width("90%")
                .color("#ccc")
            }
          }
        )
      }
      .width("100%")
      .backgroundColor("#fff")
      .borderRadius(12)
      .margin({ bottom: 15 })

    }
    .height("100%")
    .width("100%")
    .padding({ top: 120, left: 15, right: 15 })
    .border({
      width: { bottom: 2 },
      color: "#E9E9E9"
    })
    .linearGradient({
      angle: 160,
      colors: [["#EDF2FC", 0], ["#F5F6FA", 1]]
    })
  }

  @Builder
  myCart() {
    // 购物车页面
    Column() {
      Row() {
        Text() {
          Span("购物车")
            .fontWeight(700)
            .fontSize(20)
          Span(`(${this.shoppingCartData.length.toString()})`)
            .fontSize(12)
        }

        Text("创维创新谷2栋b座南...  >")
          .MyTextStyles(12, 400, "#BAB7B4")
          .layoutWeight(1)
          .margin({ left: 20, right: 20 })
        Image("/image/ic/xiaomi/ic_taobao_search.svg")
          .width(20)
          .margin({ left: 10, right: 10 })
        Text("管理")
          .MyTextStyles(16, 600, "#2F2E2E")
      }
      .justifyContent(FlexAlign.Center)
      .padding({ left: 15, right: 15, top: 20 })
      .width("100%")
      .height(60)

      Column({ space: 20 }) {

        ForEach(
          this.shoppingCartData,
          (item: shoppingCartDataStructure) => {
            this.cartContents(item)
          }
        )

        // 购物车结算栏
        Row() {
          Row() {
            CheckboxGroup({ group: 'selectAllInTheShoppingCart' })
            Text("全选")
              .MyTextStyles(14, 400, "#A4A5A4")
              .margin(5)
          }.margin({ left: 30 })

          Row() {
            Text("合计:")
              .MyTextStyles(14, 400, "#434343")
            Text() {
              Span("￥")
                .fontSize(10)
              Span(this.cartTotal.toString())
                .fontSize(22)
            }
            .MyTextStyles(16, 700, "#FF5000")
            .margin({ left: 5, right: 12 })

            Button("结算")
              .width(100)
              .linearGradient({
                direction: GradientDirection.Right,
                colors: [["#FE8E00", 0], ["#FE5000", 1]]
              })
          }
        }
        .height(60)
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
        .position({ y: "100%" })
        .translate({ y: "-100%" })
      }
      .backgroundColor("#FEFFFE")
      .width("100%")
      .layoutWeight(1)
      .borderRadius({
        topRight: 30,
        topLeft: 30
      })
      .padding({ top: 30 })

      .border({
        width: { bottom: 2 },
        color: "#E9E9E9"
      })
    }
    .linearGradient({
      angle: 135,
      colors: [["#fff1e7d9", .1], ["#ffd2b9c3", .9]]
    })
  }

  @Builder
  cartContents(item: shoppingCartDataStructure) {
    Row() {
      Checkbox({ group: "selectAllInTheShoppingCart" })
        .margin(12)
        .onChange((bool) => {
          if (bool) {
            this.cartTotal += item.price
          } else {
            this.cartTotal -= item.price
          }
        })

      Image(item.imagePath)
        .width(100)
        .aspectRatio(1)
        .borderRadius(15)

      Column() {
        Row() {
          Text(item.information)
            .textOverflow({
              overflow: TextOverflow.Ellipsis
            })
            .maxLines(1)
            .width(200)
        }.width("100%")

        Row() {
          Text("请重新选择商品规格")
            .MyTextStyles(14, 600, "#ff6c6c6c")
          Button("重选")
            .height(28)
            .width(60)
            .fontSize(12)
            .fontColor("#FE6920")
            .backgroundColor("#FEFFFE")
            .border({
              width: 1,
              color: "#FE6920"
            })
            .margin({ left: 10 })
        }
        .width("100%")
      }
      .height(100)
      .width("100%")
      .margin({ left: 15 })
      .padding({ top: 5, bottom: 5 })
      .justifyContent(FlexAlign.SpaceBetween)
    }
  }

  // 分类页面 主体页面
  @Builder
  categoryPage() {
    // 分类页
    Column() {
      Row() {
        Text('分类')
          .fontColor("#717171")
          .width("100%")
          .textAlign(TextAlign.Center)
        Image("/image/ic/xiaomi/ic_taobao_search.svg")
          .fillColor("#646464")
          .width(25)
          .offset({
            x: "-12%"
          })
      }.height(50)
      .border({
        width: { bottom: 1 },
        color: "#E9E9E9"
      })

      Tabs() {
        ForEach(
          this.classifyTabsInformation,
          (item: string, index) => {
            TabContent() {
              Column({ space: 10 }) {
                Image("/image/img/xiaomi/Swiper_XM_01.jpeg")
                  .width("100%")
                  .height(80)
                  .borderRadius(10)

                this.ContentAreaTabCategorization(["空调", "平板电视", "Note系列", "数字系列", "K系列", "笔记本"])
                this.ContentAreaTabCategorization(["清凉电器", "净化器", "加湿器", "耳机", "摄像头", "洗衣机"])

                Text(`${(index + 1) < this.classifyTabsInformation.length ? `↑ 上拉继续浏览 ${this.classifyTabsInformation[index + 1]}` : "下面已经没有内容了"}`)
                  .fontSize(12)
                  .fontColor("#979797")
              }
              .height("100%")
              .padding(10)

            }.tabBar(this.substanceTabsBar(item, index))
          }
        )
      }
      .barMode(BarMode.Scrollable)
      .barWidth(100)
      .vertical(true)
      .barBackgroundColor("#FFFFFF")
      .backgroundColor("#F6F6F6")
      .onTabBarClick((index) => {
        this.classifyIndex = index
      })
      .onChange((index) => {
        this.classifyIndex = index
      })

    }
    .border({
      width: { bottom: 2 },
      color: "#E9E9E9"
    })
  }

  // 分类页面, 内容区组件
  @Builder
  ContentAreaTabCategorization(item: string[]) {
    Column() {
      Text("精选分类")
        .width("100%")
        .height(30)
        .fontWeight(700)
      Grid() {
        ForEach(
          item,
          (item: string) => {
            GridItem() {
              Column() {
                Text(item + "图片")
                  .fontSize(14)
                  .width(60)
                  .aspectRatio(1)
                  .backgroundColor("#F8F8F8")
                  .textAlign(TextAlign.Center)
                  .borderRadius(8)
                Text(item)
                  .fontSize(12)
                  .fontColor("#8D8D8D")
                  .margin(8)
              }
            }
          }
        )
      }
      .layoutWeight(1)
      .rowsTemplate("1fr 1fr")
      .columnsTemplate("1fr 1fr 1fr")
    }
    .padding(10)
    .backgroundColor("#fff")
    .height(250)
    .borderRadius(10)
  }
}
