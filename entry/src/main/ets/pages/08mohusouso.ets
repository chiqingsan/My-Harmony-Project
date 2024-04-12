@Entry
@Component
struct Index {
  @State nameArr: string[] = [
    "李重威", "黄凯文", "杨钰康", "谭富成", "王冬冬", "谷鹏方", "辛富豪", "苏醒帮", "雷森伟", "杨威", "刘杰", "游乐佳", "袁桢祥", "江慧娟", "张鹏鹏", "王凯祥", "林晨曦", "黄晓容", "张辉鑫", "滕逸群", "黄亚涛", "汪朦", "张庆", "江腾达", "叶杰祥", "魏元坤", "吕品飞", "刘定国", "陈文诗", "王勇", "龙伟科", "杜萍", "刘景明", "胡君宝", "仇文琪", "许燕城", "刘浩彬", "徐淼鑫", "刘华桂", "李易东", "王冲", "刘锦元", "李森森", "蒙裕钧", "杜闯", "杨鑫国", "黄含", "张海峰", "詹梓杨", "江志强", "李博聪", "吴世雄", "冉瑞林", "丁基轩", "陈信企", "谢家豪", "陈志锋", "刘年华", "王森林", "龙泓名", "曾江涛", "阳桂平", "李烘炀", "冯家俊", "陈海燕", "张鑫", "胡显尊", "洪宁", "谭伟霖", "姚婷", "张杰", "司凌云", "刘英杰"
  ]
  // 记录输入历史数据
  @State enterTheHistory: string[] = []
  // 记录搜索框内的内容
  @State inputInfo: string = ""
  // 控制当前输入框的内容
  @State historyInputInfo: string = ""
  // 记录用户搜索的历史
  userTextInfo: string = ''
  // 判断用户是否删除输入内容
  deleteTheText: number = 0

  build() {

    Column() {
      Text("模糊搜索")
        .width("100%")
        .height(50)
        .fontSize(20)
        .fontWeight(700)
      Row({ space: 5 }) {
        Text("搜索名单:")
        TextInput({
          placeholder: "输入名字, 搜索同学姓名...",
          text: $$this.historyInputInfo
        })
          .onChange((val) => {
            this.inputInfo = val

            // 完成用户输入的逻辑判断, 输入, 删除, 替换
            if (val.length > this.deleteTheText) {
              this.deleteTheText = val.length
              this.userTextInfo = val
              console.log("用户正在输入")
            } else if (val.length < this.deleteTheText) {
              console.log("用户正在删除")
              console.log("val长度", val.length)
            } else {
              this.userTextInfo = val
            }

            // 当用户清除内容时, 将搜索历史信息加入历史信息数组
            if (val.length === 0) {
              console.log("用户删除完成", "记录删除内容")
              this.deleteTheText = 0
              if (this.enterTheHistory.join().length > 50 || this.enterTheHistory.length > 11) {
                this.enterTheHistory.shift()
              }
              this.enterTheHistory.push(this.userTextInfo)
              console.log("打印历史记录数组", this.enterTheHistory)
            }
          })
          .layoutWeight(1)

        Text("删除")
          .backgroundColor("#ffff2c2c")
          .padding(8)
          .border({
            width: 1,
            color: "#ffd7dfa9",
            radius: 10
          })
          .onClick(() => {
            // 清除输入框内容
            this.historyInputInfo = ""
          })

      }
      .width("100%")
      .margin({ bottom: 20 })

      Column() {
        Text("搜索历史:")
          .width("100%")
          .height(35)
          .fontSize(20)
          .fontWeight(700)
        Flex({ wrap: FlexWrap.Wrap }) {
          ForEach(
            this.enterTheHistory,
            (item: string) => {
              Text(item)
                .height(40)
                .backgroundColor("#606a6a6a")
                .border({
                  width: 1,
                  color: "#ffd7dfa9",
                  radius: 10
                })
                .padding(10)
                .margin(10)
                .onClick(() => {
                  // 点击历史记录, 绑定到输入框
                  this.historyInputInfo = item
                })
            }
          )
        }
      }
      .constraintSize({
        maxHeight: 200
      })


      List({ space: 12 }) {
        if (this.inputInfo) {
          ForEach(
            // 模糊搜索过滤, 返回新数组
            this.nameArr.filter((str) => {
              return str.includes(this.inputInfo)
            }),
            (item: string) => {
              ListItem() {
                Text(item)
                  .fontWeight(item === "詹梓杨" ? 900 : 400)
              }
            }
          )
        } else {
          ListItem() {
            Text("暂时还没有内容噢!")
              .fontSize(18)
          }
        }

      }
      .margin(10)
    }
    .width("100%")
    .height("100%")
    .padding(10)

  }
}