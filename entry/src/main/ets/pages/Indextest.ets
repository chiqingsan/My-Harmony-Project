@Entry
@Component
struct Index {
  // 记录侧边栏的开关状态
  @State sidebarStatus: boolean = false

  // ------------------------ 主页面 -----------------
  build() {

    Column() {
      // 侧边栏容器组件
      SideBarContainer(SideBarContainerType.Overlay) {

        // 侧边栏内容样式
        Column() {
        }
        .backgroundColor("#fff")
        .padding({ left: 12, right: 12, top: 12 })

        // 主体内容
        Column() {
        }
        .backgroundColor("#ccc")
        .onClick(() => {
          console.log("123");
          this.sidebarStatus = !this.sidebarStatus
        })

      }
      // .minSideBarWidth("85%")
      .sideBarWidth("85%")
      .showSideBar($$this.sidebarStatus)
      .showControlButton(false)
      .animation({
        duration: 1000,
        curve: Curve.Ease
      })
    }

  }
}