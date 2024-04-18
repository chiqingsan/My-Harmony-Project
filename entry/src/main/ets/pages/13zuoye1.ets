import { router } from '@kit.ArkUI'

@Observed
export class myitemclass {
  id: number
  imagepage: ResourceStr
  itemname: string
  itemIntroduce: string
  type: string

  constructor(imagepage: ResourceStr, itemname: string, itemIntroduce: string, type: string) {
    this.id = Date.now() * Math.random()
    this.imagepage = imagepage
    this.itemname = itemname
    this.itemIntroduce = itemIntroduce
    this.type = type
  }
}

@Entry
@Component
struct Index {
  @State myitem: myitemclass[] = [
    new myitemclass("/image/img/13zuoye/project02.png", "后台管理系统", "以Vue技理后台后台管理系统面试题面试整理", "后台系统"),
    new myitemclass("/image/img/13zuoye/project01.png", "在线问医生平台（医疗类）", "通过vue3+ts实现的在线医疗问诊相关技术整理", "H5项目"),
    new myitemclass("/image/img/13zuoye/project03.png", "鸿蒙知识点", "以ArkTS与ArkUI为主的鸿蒙基础知识点讲解", "鸿蒙应用"),
  ]

  // 项目内容, 插槽进去
  @Builder
  projectContent(item: myitemclass) {

  }

  build() {
    Column() {
      Text("项目")
        .height(40)
        .mytextsytle(18, 600, "#333942")
      Divider()
        .strokeWidth(1)
        .color("#ffededed")
      List() {
        ForEach(
          this.myitem,
          (item: myitemclass) => {
            ListItem() {
              projectInformation({ item: item })
                .onClick(() => {
                  router.pushUrl({
                    url: "pages/13zuoye2",
                    params: {
                      item: item
                    }
                  })
                })
            }
          }
        )
      }
    }

  }
}

// 项目内容组件
@Component
export struct projectInformation {
  @ObjectLink item: myitemclass

  build() {

    Row({ space: 10 }) {
      Image(this.item.imagepage)
        .height("100%")
        .borderRadius(5)
        .sharedTransition(this.item.id.toString(), { duration: 500 })

      Column() {
        Text(this.item.itemname)
          .mytextsytle(16, 600, "#323A43")
        Text(this.item.itemIntroduce)
          .mytextsytle(12, 600, "#8D9391")
          .margin({ top: 3 })
        Blank()
        Text(this.item.type)
          .mytextsytle(12, 400, "#6A8F88")
          .backgroundColor("#F2F4F5")
          .borderRadius(3)
          .padding(5)
      }
      .alignItems(HorizontalAlign.Start)
      .height("100%")
    }
    .height(140)
    .padding(16)

  }
}


@Extend(Text)
function mytextsytle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}
