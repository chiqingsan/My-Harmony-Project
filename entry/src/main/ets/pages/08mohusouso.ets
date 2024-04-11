@Entry
@Component
struct Index {
  @State nameArr: string[] = [
    "李重威", "黄凯文", "杨钰康", "谭富成", "王冬冬", "谷鹏方", "辛富豪", "苏醒帮", "雷森伟", "杨威", "刘杰", "游乐佳", "袁桢祥", "江慧娟", "张鹏鹏", "王凯祥", "林晨曦", "黄晓容", "张辉鑫", "滕逸群", "黄亚涛", "汪朦", "张庆", "江腾达", "叶杰祥", "魏元坤", "吕品飞", "刘定国", "陈文诗", "王勇", "龙伟科", "杜萍", "刘景明", "胡君宝", "仇文琪", "许燕城", "刘浩彬", "徐淼鑫", "刘华桂", "李易东", "王冲", "刘锦元", "李森森", "蒙裕钧", "杜闯", "杨鑫国", "黄含", "张海峰", "詹梓杨", "江志强", "李博聪", "吴世雄", "冉瑞林", "丁基轩", "陈信企", "谢家豪", "陈志锋", "刘年华", "王森林", "龙泓名", "曾江涛", "阳桂平", "李烘炀", "冯家俊", "陈海燕", "张鑫", "胡显尊", "洪宁", "谭伟霖", "姚婷", "张杰", "司凌云", "刘英杰"
  ]
  // 记录搜索框内的内容
  @State inputInfo: string = ""

  build() {

    Column() {
      Text("模糊搜索")
        .width("100%")
        .height(50)
        .fontSize(20)
        .fontWeight(700)
      Row() {
        Text("搜索名单:")
        TextInput()
          .onChange((val) => {
            this.inputInfo = val
            console.log("12", this.nameArr)
          })
          .layoutWeight(1)

      }
      .width("100%")
      .margin({ bottom: 20 })

      List({ space: 12 }) {
        if (this.inputInfo) {
          ForEach(
            this.nameArr.filter((str) => {
              return str.includes(this.inputInfo)
            }),
            (item: string) => {
              ListItem() {
                Text(item)
              }
            }
          )
        } else {
          ListItem() {
            Text("暂时还没有内容噢!")
          }
        }

      }
    }
    .width("100%")
    .height("100%")
    .padding(10)

  }
}