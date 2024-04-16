class myclass {
  id: string
  name: string

  constructor(name: string) {
    this.id = Date.now().toString()
    this.name = name
  }
}

@Entry
@Component
struct Page_chijiuhuatest {
  @State message: myclass[] = []
  @State inputInfo: string = ""

  aboutToAppear(): void {
    // 页面创建时拿到所有保存的key
    let keys = PersistentStorage.keys()
    // 遍历所有的key, 查找this.message数组里面有没有重复存在的数据,如果没有则使用JSON解析出对象添加至末尾
    keys.forEach((str) => {
      // 如果key名和id相同,则不添加如数组
      if (this.message.findIndex(obj => obj.id === str) === -1) {
        this.message.push(JSON.parse(AppStorage.get(str) as string))
      }
    })
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
            this.message.push(new myclass(this.inputInfo))
            // 把this.message数组最后一位进行数据持久化
            PersistentStorage.persistProp<string>(this.message[this.message.length-1].id, JSON.stringify(this.message[this.message.length-1]))
            // this.inputInfo = ""
            console.log("keys", PersistentStorage.keys())
          })
      }

      List({ space: 20 }) {
        ForEach(
          this.message,
          (item: myclass, index) => {
            ListItem() {
              Row() {
                Text(item.name)
                  .fontSize(24)
                Button("删除")
                  .height(30)
                  .backgroundColor(Color.Red)
                  .onClick(() => {
                    this.message.splice(index, 1)
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