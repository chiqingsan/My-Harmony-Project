class mySwitch {
  name: string
  isOn: boolean = false

  constructor(name: string) {
    this.name = name
    // 初始化 ui持久化的键值对
    PersistentStorage.persistProp<boolean>(this.name, false)
  }
}

@Entry
@Component
struct Page_PersistentStorage {
  @State mySwitchState: mySwitch[] = [
    new mySwitch("消息提醒"),
    new mySwitch("定时开关"),
    new mySwitch("边听边存"),
    new mySwitch("深色模式"),
    new mySwitch("添加快捷"),
    new mySwitch("免打扰"),
  ]

  onPageShow(): void {
    console.log("cqs" + PersistentStorage.keys().toString())
  }

  build() {
    Column({ space: 30 }) {
      Column({ space: 10 }) {
        Text("UI数据状态持久化:")
          .mytextstyle(24, 500, "#ff605b5b")
        Divider()
          .width("100%")
          .strokeWidth(2)
      }
      .alignItems(HorizontalAlign.Start)


      ForEach(
        this.mySwitchState,
        (item: mySwitch, index) => {
          Row() {
            Text(item.name)
              .mytextstyle(20, 600, "#121212")
            Toggle({
              type: ToggleType.Switch,
              // 读取持久化的键值
              isOn: AppStorage.get(item.name)
            })
              .onChange((val) => {
                this.mySwitchState[index].isOn = val
                // 修改持久化的键值
                AppStorage.set(item.name, item.isOn)
              })
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width("60%")
        }
      )
    }
    .width("100%")
    .height("100%")
    .padding(30)
    .alignItems(HorizontalAlign.Start)
  }
}


@Extend(Text)
function mytextstyle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)

}