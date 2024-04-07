interface IconInfo {
  id?: number
  substance: string
  iconPath: ResourceStr
}

interface listOptionsClass {
  id?: number
  substance: string
  iconPath: ResourceStr
  additionalNews?: string

}


// 定义一个text的自定义样式
@Extend(Text)
function MyTextStyle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}

@Entry
@Component
struct Index {
  tabsIconInfo: IconInfo[] = [
    { substance: "推荐", iconPath: "/image/ic/wangyiyun/wangyiyunyinle.svg" },
    { substance: "发现", iconPath: "/image/ic/wangyiyun/zhinanzhen.svg" },
    { substance: "动态", iconPath: "/image/ic/wangyiyun/008duihuakuang-8.svg" },
    { substance: "我的", iconPath: "/image/ic/wangyiyun/wode.svg" },
  ]
  sideListInformation: listOptionsClass [] = [
    { substance: "消息中心", iconPath: "/image/ic/wangyiyun/duanxin.svg" },
    { substance: "消息中心", iconPath: "/image/ic/wangyiyun/duanxin.svg" },
    { substance: "消息中心", iconPath: "/image/ic/wangyiyun/duanxin.svg" },
    { substance: "消息中心", iconPath: "/image/ic/wangyiyun/duanxin.svg" },
  ]
  // 记录侧边栏的开关状态
  @State sidebarStatus: boolean = false

  // ------------------------ 主页面 -----------------

  build() {

    Column() {
      // 侧边栏容器组件
      SideBarContainer(SideBarContainerType.Overlay) {

        // 侧边栏内容样式
        Column() {

          // 侧边栏的头像内容
          Row() {
            Image("/image/img/touxiang/touxiang1.png")
              .width(28)
              .borderRadius(99)
            Text("持青伞")
              .MyTextStyle(16, 900, "#111111")
              .margin(8)
            Image($r("app.media.ic_right"))
              .width(12)
              .fillColor("#575758")
            Blank()
            Image("/image/ic/wangyiyun/iconfontscan.svg")
              .width(24)
          }
          .width("100%")
          .height(50)

          // 会员提示样式
          Column() {
            Text("黑金会员VIP11")
              .width("100%")
              .MyTextStyle(16, 700, "#FEFEFE")
            Text("黑胶时光机丨音乐之旅")
              .width("100%")
              .MyTextStyle(12, 400, "#999A9B")
              .margin(7)
            Divider()
              .strokeWidth(.3)
              .width("95%")
              .color("#ff777e80")
            Row() {

              Text("【双人空间】开启双人音乐之旅>")
                .MyTextStyle(12, 400, "#9C9C9C")
                .layoutWeight(1)
              Image("/image/ic/wangyiyun/sudaxingqiu.svg")
                .width(20)
                .margin({ right: 6 })
            }
            .margin({ top: 10 })

          }
          .width("100%")
          .height(100)
          .padding({ top: 10, bottom: 10, left: 15, right: 15 })
          .linearGradient({
            angle: 40,
            colors: [["#2B2B2B", 0], ["#505257", .5], ["#37393D", 1]]
          })
          .borderRadius(15)


          // 列表选项栏
          Column() {
            Row() {

            }
          }
        }
        .backgroundColor("#fff")
        .padding({ left: 12, right: 12, top: 12 })

        // 主体内容
        Column() {

          // 网易云音乐tabs栏
          Tabs() {

            ForEach(
              this.tabsIconInfo,
              (item: IconInfo, index) => {

                // 底部tabs栏的内容
                TabContent() {
                  Column() {

                    this.topBar()
                    Text('abcd')
                  }
                  .layoutWeight(1)
                  .height("100%")
                  .onClick(() => {
                    console.log("123");
                    this.sidebarStatus = !this.sidebarStatus
                  })
                }.tabBar(this.bottomTabs(item, index))
                .backgroundColor("#999") // TODO 测试颜色
              }
            )
          }
          .barPosition(BarPosition.End)
        }

      }
      .minSideBarWidth("85%")
      // .maxSideBarWidth("100%")
      .sideBarWidth("85%")
      .showSideBar($$this.sidebarStatus)
      .showControlButton(false)
      .animation({
        duration: 1000,
        curve: Curve.Ease
      })
    }

  }

  // tabContent构建函数
  @Builder
  bottomTabs(item: IconInfo, index: number) {
    Column() {
      Image(item.iconPath)
        .width(30)
      Text(item.substance)
        .fontSize(12)
    }
  }

  // topBar构建函数
  @Builder
  topBar() {
    Row() {
      Image("/image/ic/wangyiyun/gengduo.svg")
        .width(25)
        .onClick(() => {
          this.sidebarStatus = true
          console.log(`${this.sidebarStatus}`);
        })
      Search()
        .layoutWeight(1)
      Image('/image/ic/wangyiyun/008duihuakuang-8.svg')
        .width(40)
    }
    .onClick(() => {
      console.log("123");
    })
  }
}