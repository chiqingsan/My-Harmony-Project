interface iconPath {
  Path_a: ResourceStr
  Path_b: ResourceStr
  substance: string
}

@Entry
@Component
struct Index {
  navList: string[] = ['首页', '动画', '番剧', '国创', '音乐', '舞蹈', '游戏', '知识', '科技', '运动', '汽车', '生活', '美食', '动物圈', '鬼畜', '时尚', '娱乐', '影视', '纪录片', '电影', '电视剧', '直播', '课堂']
  @State IconInfo: iconPath[] = [
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_0.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_0_selected.png",
      substance: "首页"
    },
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_1.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_1_selected.png",
      substance: "内容"
    },
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_2.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_2_selected.png",
      substance: "购物车"
    },
    {
      Path_a: "/image/img/day2/ic_tabbar_icon_3.png",
      Path_b: "/image/img/day2/ic_tabbar_icon_3_selected.png",
      substance: "我的"
    },
  ]
  @State currentIndex: number = 0
  @State currentIndex1: number = 0

  @Builder
  Nav_bar(item: iconPath, index: number) {
    Column({ space: 5 }) {
      Image(index === this.currentIndex ? item.Path_b : item.Path_a)
        .width(30)
      Text(item.substance)// .fontWeight((300 > 200 ? 100 : 400) < (500 < 100 ? 700 : 900) ? 100 : 200)
        .fontWeight(index === this.currentIndex ? 600 : 300)
        .fontColor(index === this.currentIndex ? "#ffff9314" : "#000")
    }
    .width(80)
  }

  @Builder
  Nav_bar1(item: string, index: number) {
    Column({ space: 5 }) {
      // Image(index === this.currentIndex1 ? item.Path_b : item.Path_a)
      //   .width(30)
      Text(item)
        .fontWeight(index === this.currentIndex1 ? 600 : 300)
        .fontSize(index === this.currentIndex1 ? 18 : 14)
        .fontColor(index === this.currentIndex1 ? "#ffff9314" : "#000")
    }
    .width(80)
  }

  build() {
    Column() {
      Tabs() {
        ForEach(
          this.IconInfo,
          (item: iconPath, index) => {
            TabContent() {
              Column() {
                Text(`${item.substance}页面`)
                  .fontSize(30)
                  .fontWeight(600)
                  .margin(20)

                Tabs() {

                  ForEach(
                    this.navList,
                    (item: string, index) => {
                      TabContent() {
                        Column() {
                          Text(`${item}的内容`)
                            .fontSize(30)
                            .fontWeight(600)
                        }
                      }.tabBar(this.Nav_bar1(item, index))

                    }
                  )
                }
                .barWidth("100%")
                .barMode(BarMode.Scrollable)
                .barPosition(BarPosition.Start)
                .onChange((val) => {
                  console.log(`${val}`)
                  this.currentIndex1 = val
                })
              }
            }.tabBar(this.Nav_bar(item, index))
            .backgroundColor(`rgb(${Math.floor(Math.random() * 255)},${Math.floor(Math.random() * 255)},${Math.floor(Math.random() * 255)})`)
          }
        )

      }
      .vertical(false)
      .barPosition(BarPosition.End)
      .barMode(BarMode.Scrollable)
      .onChange((val) => {
        console.log(`${val}`)
        this.currentIndex = val
      })
      .barHeight(80)
      .animationDuration(0)
    }
  }
}