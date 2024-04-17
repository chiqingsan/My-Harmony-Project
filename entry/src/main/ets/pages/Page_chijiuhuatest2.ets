class myClass {
  id: string
  name: string

  constructor(name: string) {
    this.id = Date.now().toString()
    this.name = name
  }
}

const PERKEY = "todo"
PersistentStorage.persistProp<string>(PERKEY, JSON.stringify("[]"))

// 洗澡
@Entry
@Component
struct Index {
  @State message: myClass[] = []
  @State inputInfo: string = ""

  aboutToAppear(): void {
    const appStr = AppStorage.get<string>(PERKEY) as string
    const list = JSON.parse(appStr) as (myClass[])
    // console.log("ddddd",appStr,JSON.parse(appStr) ,Array.isArray(list))
    this.message.push(...list)
  }

  build() {
    Column() {
      Row({ space: 12 }) {
        TextInput({
          placeholder: "输入任务名",
          text: $$this.inputInfo
        })
          .layoutWeight(1)
        Button("新建任务")
          .onClick(() => {
            this.message.push(new myClass(this.inputInfo))
            // 把this.message数组最后一位进行数据持久化
            AppStorage.set(PERKEY, JSON.stringify((this.message)))
          })
      }

      List({ space: 20 }) {
        ForEach(
          this.message,
          (item: myClass, index) => {
            ListItem() {
              Row() {
                Text(item.name)
                  .fontSize(24)
                Button("删除")
                  .height(30)
                  .backgroundColor(Color.Red)
                  .onClick(() => {
                    this.message.splice(index, 1)
                    AppStorage.set(PERKEY, JSON.stringify((this.message)))
                  })
              }
              .width("100%")
              .justifyContent(FlexAlign.SpaceBetween)
            }
          }
        )
      }
      .margin(20)
      .scrollBar(BarState.Off)
    }
    .padding(20)
  }
}