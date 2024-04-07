// 轮播图接口
interface ImagePath {
  id: number
  imagePath: ResourceStr
}

// 导航条接口
interface IconPath {
  substance: string
  iconPath: ResourceStr
}

// 列表内容接口
interface ListSubstance {
  substance: string
  time: string
  imagePath: ResourceStr
}


@Entry
@Component
struct Index {
  // 记录当前tab页的索引
  @State TabIndex: number = 0
  private imagePath: ImagePath[] = [
    { id: 1, imagePath: $r("app.media.banner_01_1") },
    { id: 2, imagePath: $r("app.media.banner_01_2") },
    { id: 3, imagePath: $r("app.media.banner_01_3") },
    { id: 4, imagePath: $r("app.media.banner_01_4") },
  ]
  private iconPath: IconPath[] = [
    { substance: "内容精选", iconPath: $r("app.media.ic_01_1") },
    { substance: "学堂", iconPath: $r("app.media.ic_01_2") },
    { substance: "鸿蒙开发者社区", iconPath: $r("app.media.ic_01_3") },
    { substance: "博客", iconPath: $r("app.media.ic_01_4") },
    { substance: "企业培训", iconPath: $r("app.media.ic_01_5") },
    { substance: "Next训练营", iconPath: $r("app.media.ic_01_6") },
    { substance: "精培", iconPath: $r("app.media.ic_01_7") },
  ]
  private ListSubstanceInfo: ListSubstance[] = [
    {
      imagePath: $r("app.media.list_02_1"),
      time: "2024-03-05 10:07:22",
      substance: "字节一面：TCP和UDP可以使用同一个端口号吗？"
    },
    {
      imagePath: $r("app.media.list_02_2"),
      time: "2024-03-05 10:07:22",
      substance: "NoSQL：在高并发场景下，数据库和NoSQL如何做到.."
    },
    {
      imagePath: $r("app.media.list_02_3"),
      time: "2024-03-05 10:07:22",
      substance: "处理大规模并发请求时如何设计和优化Python后端服."
    },
    {
      imagePath: $r("app.media.list_02_4"),
      time: "2024-03-05 10:07:22",
      substance: "C++右值引用：解锁高效内存管理与性能优化的奥秘"
    },
    {
      imagePath: $r("app.media.list_02_5"),
      time: "2024-03-05 10:07:22",
      substance: "现代分布式系统架构的权衡分析"
    }
  ]
  // 实例化滚动条
  private Scroll: Scroller = new Scroller()

  build() {
    Column() {
      Tabs() {
        ForEach(
          ["首页", "视频", "消息", "我的"],
          (item: string, index) => {
            TabContent() {

              if (index === 0) {
                Column() {

                  // 顶部栏
                  this.TopBar_subassembly($r("app.media.hot_01"))

                  this.Scroll_substance()
                }
              } else if (index === 1) {
                Image($r("app.media.banner_01_4"))
                // .objectFit(ImageFit.Cover)
              } else if (index === 2) {
                Text("消息页面, 待完成")
              } else if (index === 3) {
                Text("我的页面, 待完成")
              }


            }
            // .backgroundColor("#ccc")
            .tabBar(this.Tabs_Substance(item, index, 9))
          }
        )
      }
      .barHeight(55)
      .barPosition(BarPosition.End)
      .backgroundImage(this.TabIndex === 1 ? $r("app.media.bg_02_2") : $r("app.media.bg_02_1"))
      .backgroundImageSize(ImageSize.Contain)
      .backgroundImagePosition({
        y: "93%"
      })
      .onTabBarClick((val) => {
        this.TabIndex = val
      })

    }
    .height("100%")
    .width("100%")
    .backgroundColor("#FCFCFC")
  }

  @Builder
  Scroll_substance() {
    Scroll(this.Scroll) {
      Column() {

        // 轮播图
        this.Swiper_subassembly(this.imagePath, "生成式AI会扼杀DevSecOps吗")


        // 内容区
        this.Nav_subassembly(this.iconPath)

        Column() {
          Row() {
            Text("热门推荐")
              .fontWeight(900)
              .fontSize(18)
              .margin(12)
          }
          .width("100%")
          .height(50)

          Column() {
            ForEach(
              this.ListSubstanceInfo,
              (item: ListSubstance) => {
                Row() {
                  Image(item.imagePath)
                    .height(80)
                    .borderRadius(12)
                  Column() {
                    Text(item.substance)
                      .width("100%")
                      .fontSize(14)
                      .textOverflow({
                        overflow: TextOverflow.Ellipsis
                      })
                      .maxLines(2)
                    Text(item.time)
                      .width("100%")
                      .fontColor("#C8C8C8")
                      .fontSize(10)
                  }
                  .layoutWeight(1)
                  .height("100%")
                  .justifyContent(FlexAlign.SpaceBetween)
                  .padding(10)

                }
                .height(100)

                Divider()
                  .strokeWidth(1)
                  .color("#F5F5F5")

              }
            )

          }
          .height("100%")
        }
        .borderRadius(3)
        .margin({ top: 3 })
        .padding({ left: 10, right: 2 })
      }
      .margin({ top: 56, bottom: 110 })
      .height("100%")
      .width("100%")

    }
    .scrollBar(BarState.Off)
    .height("100%")
  }

  @Builder
  TopBar_subassembly(icon: ResourceStr) {
    // 顶部栏
    Row() {
      Image(icon)
        .width(60)
        .onClick(() => {
          this.Scroll.scrollEdge(Edge.Top)
        })

      Row({ space: 15 }) {
        Image($r("app.media.user_01"))
          .width(20)

        Image($r("app.media.more_01"))
          .width(20)

      }
    }
    .zIndex(99)
    .width("100%")
    .padding({ left: 28, right: 16 })
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor("#fff")
    .height(56)
    .position({})

  }

  @Builder
  Swiper_subassembly(imagePath: ImagePath[], text: string) {
    // 轮播图
    Swiper() {
      ForEach(
        imagePath,
        (item: ImagePath) => {
          Stack() {
            Image(item.imagePath)
              .width("100%")

            Text(text)
              .fontColor("#FAFCF5")
              .fontWeight(700)
              .offset({
                x: 10,
                y: -30
              })
          }
          .alignContent(Alignment.BottomStart)
        }
      )
    }
    .autoPlay(true)
    .width("100%")
    .indicator(
      Indicator.dot()
        .left(0)
        .itemWidth(30)
        .itemHeight(5)
        .selectedItemWidth(30)
        .color("#aa2f383e")
        .selectedColor("#fff")
    )
    .margin({ bottom: 10 })
  }

  @Builder
  Nav_subassembly(iconPath: IconPath[],) {
    // 内容区
    Grid() {
      ForEach(
        iconPath,
        (item: IconPath) => {
          GridItem() {
            Column() {
              Image(item.iconPath)
                .width(40)
              Text(item.substance)
                .fontColor("#666")
                .fontSize(14)
                .layoutWeight(1)
            }
          }
        }
      )
    }
    .scrollBar(BarState.Off)
    .columnsGap(24)
    .height(65)
    .rowsTemplate("1fr")
    .padding({ left: 12, right: 12 })
  }

  // tabs封装
  @Builder
  Tabs_Substance(item: string, index: number, numberOfMessages?: number) {
    Column() {
      if (index === 2) {
        Badge({
          count: Number(numberOfMessages),
          maxCount: 99,
          position: BadgePosition.RightTop,
          style: {
            badgeColor: "#F72F2E",
            badgeSize: 14
          }
        }) {
          Text(item)
            .width(45)
            .textAlign(TextAlign.Center)
            .fontWeight(this.TabIndex === index ? 900 : 600)
            .fontColor(this.TabIndex === index ? "#000" : "#999")
        }
      } else {
        Text(item)
          .fontWeight(this.TabIndex === index ? 900 : 600)
          .fontColor(index === 1 ? (this.TabIndex === index ? "#fff" : "#999") : this.TabIndex === index ? "#000" : "#999")
      }
    }
  }
}