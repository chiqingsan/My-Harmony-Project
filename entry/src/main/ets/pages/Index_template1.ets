interface BannerItem {
  imgUrl: ResourceStr,
  imgTitle: string
}

interface ColumnarItem {
  iconUrl: ResourceStr,
  iconTitle: string
}

interface RecommendItem {
  imgUrl: ResourceStr,
  title: string,
  createTime: string
}


function getFontColor(currentIndex: number, tabBarIndex: number) {
  if (currentIndex === tabBarIndex) {
    if (currentIndex === 1) {
      return '#fff'
    }
    return '#000'
  }
  return '#999'
}

// 顶部结构
/*
 * Stack() {
        Text('全部话题')
          .width('100%')
          .height(80)
          .textAlign(TextAlign.Center)
          .fontSize(30)
          .fontWeight(700)
        Button('X')
          .padding(0)
          .margin({top: 25, right: 10})
          .width(30)
          .height(30)
          .borderRadius(15)
          .fontSize(16)
          .fontWeight(500)
          .fontColor('rgba(0,0,0,0.5)')
          .backgroundColor('rgba(0,0,0,0)')
      }
      .alignContent(Alignment.TopEnd)
 * */

// List 数据
interface TopicItem {
  title: string,
  children?: SubTopicItem[]
}

interface SubTopicItem {
  subTitle: string,
  total: string
}

/*
[
    {
      title: '开发',
      children: [
        {subTitle: '前端', total: '2.3w'},
        {subTitle: '后端', total: '2.5w'},
        {subTitle: '开发工具', total: '7181'},
        {subTitle: '游戏开发', total: '1001'},
        {subTitle: '项目管理', total: '608'},
        {subTitle: '架构', total: '2005'},
        {subTitle: 'VR/AR', total: '100'},
      ]
    },
    {
      title: '人工智能',
      children: [
        {subTitle: '机器学习', total: '2.3w'},
        {subTitle: '深度学习', total: '2.5w'},
        {subTitle: '算法', total: '7181'},
        {subTitle: '语音识别', total: '1001'},
        {subTitle: '人脸识别', total: '608'},
        {subTitle: '机器视觉', total: '2005'},
        {subTitle: '无人驾驶', total: '100'},
        {subTitle: '机器人', total: '100'},
      ]
    },
    {
      title: '云计算',
      children: [
        {subTitle: '云原生', total: '2.3w'},
        {subTitle: '混合云', total: '2.5w'},
        {subTitle: '分布式', total: '7181'},
        {subTitle: 'Laas', total: '1001'},
        {subTitle: 'Paas', total: '608'},
        {subTitle: 'Saas', total: '2005'},
        {subTitle: 'Kafka', total: '100'},
        {subTitle: '虚拟化', total: '100'},
      ]
    },
    {title: '开源'},
    {
      title: '网络',
      children: [
        {subTitle: '网络设备', total: '2.3w'},
        {subTitle: '通信技术', total: '2.5w'},
        {subTitle: '网络优化', total: '7181'},
        {subTitle: '网络管理', total: '1001'},
        {subTitle: '路由交换', total: '608'},
        {subTitle: '布线接入', total: '2005'},
      ]
    },
    {
      title: '大数据',
      children: [
        {subTitle: '数据分析', total: '2.3w'},
        {subTitle: '数据可视化', total: '2.5w'},
        {subTitle: '商业智能', total: '7181'},
        {subTitle: 'Spark', total: '1001'},
        {subTitle: '数据湖', total: '608'},
        {subTitle: '数据仓库', total: '2005'},
      ]
    },
    {title: '区块链'},
    {title: '服务器'},
    {title: '元宇宙'},
    {title: '原创'}
  ]
 * */

// ListItemGroup的header结构
/*
 * Row() {
      Image($r('app.media.ic_03_title'))
        .width(18)
        .height(18)
        .margin({right: 10})
      Text('一级标题')
        .fontSize(20)
        .fontColor('#333')
        .fontWeight(700)
    }
    .padding({left: 20})
    .width('100%')
    .height(50)
    .backgroundColor('#d5d5d5')
 * */

// ListItem结构
/*
 * ListItem() {
      Row() {
        Image($r('app.media.ic_03_title'))
          .width(16)
          .height(16)
        Text('二级标题')
          .layoutWeight(1)
          .fontSize(16)
          .fontColor('#333')
          .fontWeight(700)
          .margin({right: 8, left: 8})
        Text() {
          Span(‘数量’)
          Span('内容')
        }
        .fontSize(14)
        .fontColor('#999')
      }
      .padding({left: 30, right: 30})
      .width('100%')
      .height(40)
    }
 * */

// AlphabetIndexer组件数据
// ['开', '智', '云', '源', '网', '大', '区', '服', '元', '原']


@Entry
@Component
struct Index {
  @State bannerList: BannerItem[] = [
    { imgUrl: $r('app.media.banner_01_1'), imgTitle: '谷歌杀入开源大模型，凭什么问鼎王座？' },
    { imgUrl: $r('app.media.banner_01_3'), imgTitle: '微软牵手OpenAI劲敌！Mistral顶级大模型不再开源' },
    { imgUrl: $r('app.media.banner_01_4'), imgTitle: '生成式AI会扼杀DevSecOps吗' },
    { imgUrl: $r("app.media.banner_01_2"), imgTitle: '微软继续Linux化！sudo原生命令强势登录Windows' },
  ]
  @State columnarList: ColumnarItem[] = [
    { iconUrl: $r('app.media.ic_01_1'), iconTitle: '内容精选' },
    { iconUrl: $r('app.media.ic_01_2'), iconTitle: '学堂' },
    { iconUrl: $r('app.media.ic_01_3'), iconTitle: '鸿蒙开发者社区' },
    { iconUrl: $r('app.media.ic_01_4'), iconTitle: '博客' },
    { iconUrl: $r('app.media.ic_01_5'), iconTitle: '企业培训' },
    { iconUrl: $r('app.media.ic_01_6'), iconTitle: 'Next训练营' },
    { iconUrl: $r('app.media.ic_01_7'), iconTitle: '精培' },
  ]
  @State recommendList: RecommendItem[] = [
    {
      imgUrl: $r('app.media.list_02_1'),
      title: '字节一面：TCP和UDP可以使用同一个端口号吗？',
      createTime: '2024-03-05 10:07:22'
    },
    {
      imgUrl: $r('app.media.list_02_2'),
      title: 'NoSQL：在高并发场景下，数据库和NoSQL如何做到互补？',
      createTime: '2024-03-05 10:03:17'
    },
    {
      imgUrl: $r('app.media.list_02_3'),
      title: '处理大规模并发请求时如何设计和优化Python后端服务的架构和性能',
      createTime: '2024-03-05 10:03:09'
    },
    {
      imgUrl: $r('app.media.list_02_4'),
      title: 'C++右值引用：解锁高效内存管理与性能优化的奥秘',
      createTime: '2024-03-05 09:55:00'
    },
    { imgUrl: $r('app.media.list_02_5'), title: '现代分布式系统架构的权衡分析', createTime: '2024-03-05 09:52:57' },
  ]
  @State currentIndex: number = 0
  // 记录全屏模态的开关状态
  @State isShow: boolean = false
  // 记录当前字母条的索引
  @State alphabetBarIndex: number = 0
  // 记录当前list滑动索引
  @State listSlidingIndex: number = 0
  scroller: Scroller = new Scroller()
  // 实例化列表滚动条控制器
  private listScroll: ListScroller = new ListScroller
  private arrayOfLetterBars: string[] = ['开', '智', '云', '源', '网', '大', '区', '服', '元', '原']
  private topicInformation: TopicItem[] = [
    {
      title: '开发',
      children: [
        { subTitle: '前端', total: '2.3w' },
        { subTitle: '后端', total: '2.5w' },
        { subTitle: '开发工具', total: '7181' },
        { subTitle: '游戏开发', total: '1001' },
        { subTitle: '项目管理', total: '608' },
        { subTitle: '架构', total: '2005' },
        { subTitle: 'VR/AR', total: '100' },
      ]
    },
    {
      title: '人工智能',
      children: [
        { subTitle: '机器学习', total: '2.3w' },
        { subTitle: '深度学习', total: '2.5w' },
        { subTitle: '算法', total: '7181' },
        { subTitle: '语音识别', total: '1001' },
        { subTitle: '人脸识别', total: '608' },
        { subTitle: '机器视觉', total: '2005' },
        { subTitle: '无人驾驶', total: '100' },
        { subTitle: '机器人', total: '100' },
      ]
    },
    {
      title: '云计算',
      children: [
        { subTitle: '云原生', total: '2.3w' },
        { subTitle: '混合云', total: '2.5w' },
        { subTitle: '分布式', total: '7181' },
        { subTitle: 'Laas', total: '1001' },
        { subTitle: 'Paas', total: '608' },
        { subTitle: 'Saas', total: '2005' },
        { subTitle: 'Kafka', total: '100' },
        { subTitle: '虚拟化', total: '100' },
      ]
    },
    { title: '开源' },
    {
      title: '网络',
      children: [
        { subTitle: '网络设备', total: '2.3w' },
        { subTitle: '通信技术', total: '2.5w' },
        { subTitle: '网络优化', total: '7181' },
        { subTitle: '网络管理', total: '1001' },
        { subTitle: '路由交换', total: '608' },
        { subTitle: '布线接入', total: '2005' },
      ]
    },
    {
      title: '大数据',
      children: [
        { subTitle: '数据分析', total: '2.3w' },
        { subTitle: '数据可视化', total: '2.5w' },
        { subTitle: '商业智能', total: '7181' },
        { subTitle: 'Spark', total: '1001' },
        { subTitle: '数据湖', total: '608' },
        { subTitle: '数据仓库', total: '2005' },
      ]
    },
    { title: '区块链' },
    { title: '服务器' },
    { title: '元宇宙' },
    { title: '原创' }
  ]

  build() {
    Column() {
      Stack() {
        Tabs() {
          TabContent() {
            Column() {
              Row() {
                Image($r('app.media.hot_01'))
                  .width(60)
                  .onClick(() => {
                    this.scroller.scrollTo({ yOffset: 0, xOffset: 0 })
                  })
                Row() {
                  Image($r("app.media.user_0111"))
                    .width(20)
                    .margin({ right: 15 })

                  // TODO 添加全屏模态
                  Image($r('app.media.more_01'))
                    .width(20)
                    .bindContentCover($$this.isShow, this.topicPages())
                    .onClick(() => {
                      console.log("123")
                      this.isShow = true
                    })
                }
              }
              .justifyContent(FlexAlign.SpaceBetween)
              .padding({ left: 16, right: 16 })
              .width('100%')
              .height(56)

              Scroll(this.scroller) {
                Column() {
                  Swiper() {
                    ForEach(this.bannerList, (item: BannerItem) => {
                      this.BannerItem(item.imgUrl, item.imgTitle)
                    })
                  }
                  .loop(true)
                  .autoPlay(true)
                  .interval(3000)
                  .indicator(
                    Indicator
                      .dot()
                      .left(0)
                      .itemWidth(30)
                      .itemHeight(5)
                      .selectedItemWidth(30)
                      .selectedColor(Color.White)
                  )

                  Grid() {
                    ForEach(this.columnarList, (item: ColumnarItem) => {
                      this.ColumnarItem(item.iconUrl, item.iconTitle)
                    })
                  }
                  .scrollBar(BarState.Off)
                  .rowsTemplate('1fr')
                  .margin({ top: 10 })
                  .width('100%')
                  .height(65)

                  ColumnSplit()
                    .margin({ top: 20, bottom: 20 })
                    .width('100%')
                    .height(4)
                    .backgroundColor('#fbfbfb')
                  Text('热门推荐')
                    .width('100%')
                    .padding({ left: 10 })
                    .fontSize(20)
                    .fontColor('#303030')
                    .fontWeight(700)
                  List() {
                    ForEach(this.recommendList, (item: RecommendItem) => {
                      this.RecommendItem(item.imgUrl, item.title, item.createTime)
                    })
                  }
                  .padding({ left: 10, right: 10, bottom: 20 })
                }
              }
              .layoutWeight(1)
              .scrollBar(BarState.Off)
            }
          }.tabBar(this.TabBarItem('首页', 0))

          TabContent() {
            Image($r('app.media.banner_01_4'))
              .width('100%')
              .height('100%')
          }
          .tabBar(this.TabBarItem('视频', 1))

          TabContent() {
            Text('待完成---消息')
          }.tabBar(this.TabBarItem('消息', 2, 9))

          TabContent() {
            Text('待完成---我的')
          }.tabBar(this.TabBarItem('我的', 3))

        }
        .barPosition(BarPosition.End)
        .onChange(index => {
          this.currentIndex = index
        })

        Image($r('app.media.bg_02_2'))
          .imgChange()
          .opacity(this.currentIndex === 1 ? 1 : 0)
        Image($r('app.media.bg_02_1'))
          .imgChange()
          .opacity(this.currentIndex === 1 ? 0 : 1)

      }
      .alignContent(Alignment.BottomEnd)
    }
    .width('100%')
    .height('100%')
  }

  @Styles
  imgChange() {
    .width('100%')
    .height(55)
    .zIndex(-1)
  }

  @Builder
  TabBarItem(text: string, index: number, count: number = 0) {
    Badge({ count: count, style: {}, position: { x: 25, y: -5 } }) {
      Text(text)
        .fontWeight(700)
        .fontColor(getFontColor(this.currentIndex, index))
    }
  }

  @Builder
  RecommendItem(img: ResourceStr, title: string, createTime: string) {
    ListItem() {
      Row() {
        Image(img)
          .width(142)
          .borderRadius(8)
        Column() {
          Text(title)
            .fontSize(15)
            .fontColor('#303030')
            .maxLines(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text(createTime)
            .fontSize(12)
            .fontColor('#c0c0c0')
        }
        .margin({ left: 10 })
        .layoutWeight(1)
        .height('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .alignItems(HorizontalAlign.Start)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height(110)
      .padding({ top: 15, bottom: 15 })
      .border({ width: { bottom: 2 }, color: '#f4f4f4' })
    }
  }

  @Builder
  ColumnarItem(icon: ResourceStr, title: string) {
    GridItem() {
      Column() {
        Image(icon)
          .width(40)
        Text(title)
          .fontSize(14)
          .fontColor('#666')
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 12, right: 12 })
      .height('100%')
    }
  }

  @Builder
  BannerItem(img: ResourceStr, title: string) {
    Stack() {
      Image(img)
        .width('100%')
      Text(title)
        .fontColor(Color.White)
        .fontWeight(700)
        .margin({ left: 10, bottom: 30, right: 10 })
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
    }
    .alignContent(Alignment.BottomStart)
  }

  @Builder
  topicPages() {
    Column() {

      // 全部话题
      Row() {
        Text("全部话题")
          .textAlign(TextAlign.Center)
          .fontSize(26)
          .fontWeight(700)
          .layoutWeight(1)
        Text("x")
          .fontSize(24)
          .fontColor("#828282")
          .translate({
            x: "-140%"
          })
          .onClick(() => {
            this.isShow = false
          })
      }
      .width("100%")
      .height(70)

      // 话题内容
      List({ scroller: this.listScroll }) {
        ForEach(
          this.topicInformation,
          (item: TopicItem) => {
            ListItemGroup({
              header: this.headStyle(item.title)
            }) {
              ForEach(
                item.children,
                (item_a: SubTopicItem) => {
                  ListItem() {
                    Row() {
                      Image($r("app.media.ic_03_title"))
                        .width(20)
                        .margin({ right: 8 })
                      Text(item_a.subTitle)
                        .layoutWeight(1)
                        .fontWeight(700)
                      Text(item_a.total + "内容")
                        .fontSize(14)
                        .fontColor("#A0A0A1")
                    }
                    .width("100%")
                    .height(40)
                    .padding({ left: 35, right: 24 })
                  }
                }
              )
            }
          }
        )
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
      .sticky(StickyStyle.Header)
      .onScrollIndex((start: number) => {
        this.alphabetBarIndex = start
      })

      AlphabetIndexer({ arrayValue: this.arrayOfLetterBars, selected: this.alphabetBarIndex })
        .position({
          x: "100%",
          y: "20%"
        })
        .translate({
          x: "-100%"
        })
        .onSelect((index) => {
          this.listScroll.scrollToIndex(index)
        })

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#fff")
  }

  @Builder
  headStyle(substance: string) {
    Row() {
      Image($r("app.media.ic_03_title"))
        .width(20)
        .margin(10)
      Text(substance)
        .fontSize(18)
        .fontWeight(900)
    }
    .width("100%")
    .height(50)
    .backgroundColor("#D6D6D6")
    .padding({ left: 10 })
  }
}