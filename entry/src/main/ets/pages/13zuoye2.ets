import { myitemclass } from "./13zuoye1"
import { router } from '@kit.ArkUI'


// 项目内容组件
@Component
export struct projectInformation_a {
  @ObjectLink item: myitemclass

  build() {

    Row({ space: 10 }) {
      Image(this.item.imagepage)
        .height("100%")
        .borderRadius(5)
        .sharedTransition(this.item.id.toString(), { duration: 500 })

      Column() {
        Text(this.item.itemname)
          .mytextsytle(16, 600, "#FAF7F2")
        Text(this.item.itemIntroduce)
          .mytextsytle(14, 600, "#FAF7F2")
          .margin({ top: 15 })
          .width("70%")
        Blank()
        Text("学习进度:  10%")
          .mytextsytle(14, 500, "#99897D")
      }
      .alignItems(HorizontalAlign.Start)
      .height("100%")
      .width("100%")
      .margin({ left: 5 })
    }
    .height(140)
    .padding(16)

  }
}

@Entry
@Component
struct Index {
  // @State mydetailTitle: myitemclass = new myitemclass("/image/img/13zuoye/project02.png", "后台管理系统", "以Vue技理后台后台管理系统面试题面试整理", "学习进度: 10%")
  onPageShow(): void {
    if (router.getParams()) {
      const temp = router.getParams() as object
      this.mydetailTitle = temp["item"]
      console.log(`onPageShow${JSON.stringify(this.mydetailTitle)}`)
    }
  }

  @State mydetailTitle: myitemclass = new myitemclass("", "", "", "学习进度: 10%")

  build() {

    Stack() {
      Image($r("app.media.project_bg"))
        .width("100%")
      Column() {
        Row() {
          Image($r("app.media.ic_public_arrow_left"))
            .width(30)
            .fillColor("#F1E9DD")
            .margin({ left: 15 })
            .onClick(() => {
              router.back()
            })
        }
        .height(60)
        .width("100%")

        Column() {
          projectInformation_a({ item: this.mydetailTitle })
        }

        Column() {
          Row() {
            Text("问题列表")
              .mytextsytle(20, 600, "#4C5056")
              .margin({ left: 18 })
          }
          .width("100%")
          .height(50)

          Divider()
        }
        .width("100%")
        .height("100%")
        .backgroundColor("#fff")
        .borderRadius(15)

      }
    }
    .width("100%")
    .height("100%")
    .alignContent(Alignment.Top)
    .backgroundColor("#ff994000")
  }
}


@Extend(Text)
function mytextsytle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}
