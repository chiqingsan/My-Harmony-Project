import * as BillData from "../../common/BillData"
import { router } from '@kit.ArkUI'


@Entry
@Component
struct Bill_AddPage {
  // 记录订单索引
  @State orderIndex: BillData.BillType = BillData.BillType.Pay
  // 记录支出项中子项的ID
  @State expenditureID: number = -1
  // 记录当前输入框的内容
  @State inputInfo: number = 0

  build() {
    Navigation() {
      Column() {
        // 切换订单类型
        this.switchBillTypeBuilder()

        // 输入框区域
        Stack({ alignContent: Alignment.End }) {
          Row() {
            // 输入框
            TextInput({ placeholder: '0.00', text: this.inputInfo ? this.inputInfo.toString() : "" })
              .layoutWeight(1)
              .textAlign(TextAlign.End)
              .backgroundColor(Color.Transparent)
              .fontColor(Color.Gray)
              .type(InputType.NUMBER_DECIMAL)// 只能输入数值
              .fontSize(20)
              .placeholderFont({ size: 20 })
              .placeholderColor('#d9d9d9')
              .padding({ right: 20 })
              .onChange((val) => {
                this.inputInfo = parseInt(val)
              })
          }
          .width('100%')

          Text('¥')
            .fontSize(25)
        }
        .backgroundColor(Color.White)
        .width('80%')
        .margin(20)
        .borderRadius(10)
        .border({ width: 1, color: Color.Gray })
        .padding({ left: 10, right: 10 })

        // 支付收入切换
        if (this.orderIndex === BillData.BillType.Pay) {
          expensesPage({ expenditureID: this.expenditureID, item: BillData.payBillCategoryList })
            .transition({
              type: TransitionType.All,
              opacity: 0.3,
              translate: { x: "-100%" }
            })

        } else {
          expensesPage({ expenditureID: this.expenditureID, item: BillData.inComBillCategoryList })
            .transition({
              type: TransitionType.All,
              opacity: 0.3,
              translate: { x: "100%" }
            })

        }


        Blank()
        Button('保 存')
          .width('80%')
          .type(ButtonType.Capsule)
          .backgroundColor(Color.Transparent)
          .fontColor('#5b8161')
          .border({ width: 1, color: '#5b8161' })
          .margin(10)
          .onClick(() => {
            if (this.inputInfo && this.expenditureID != -1) {
              router.back({
                url: "pages/Bill/BillIndexPage",
                params: {
                  id: this.expenditureID,
                  price: this.orderIndex ? this.inputInfo : -this.inputInfo,
                  type: this.orderIndex
                }
              })
            }
          })

      }
      .height('100%')

    }
    .mode(NavigationMode.Stack)
    .title('记一笔')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
    .backgroundColor('#d7f1e2')
  }

  @Builder
  switchBillTypeBuilder() {
    // 切换订单类型
    Row({ space: 15 }) {
      // 选中时 文本白色，背景黑色
      Text('支出')
        .tabTextExtend()
        .backgroundColor(this.orderIndex === BillData.BillType.Pay ? Color.Black : Color.White)
        .fontColor(this.orderIndex === BillData.BillType.Pay ? Color.White : Color.Black)
        .onClick(() => {
          animateTo({
            duration: 700,
            curve: Curve.EaseInOut
          }, () => {
            this.orderIndex = BillData.BillType.Pay
          })
        })

      Text('收入')
        .tabTextExtend()
        .backgroundColor(this.orderIndex === BillData.BillType.InCome ? Color.Black : Color.White)
        .fontColor(this.orderIndex === BillData.BillType.InCome ? Color.White : Color.Black)
        .onClick(() => {
          animateTo({
            duration: 500,
            curve: Curve.Ease
          }, () => {
            this.orderIndex = BillData.BillType.InCome
          })
        })
    }
  }
}

@Extend(Text)
function tabTextExtend() {
  .borderRadius(15)
  .width(50)
  .height(30)
  .textAlign(TextAlign.Center)
  .fontSize(14)
}

@Component
struct IconCom {
  @Prop item: BillData.UseForItem
  @Link expenditureID: number

  build() {
    Column({ space: 5 }) {
      Image(this.item.icon)
        .width(20)
      Text(this.item.name)
        .fontSize(12)
        .width(48)
        .textAlign(TextAlign.Center)
    }
    .padding(5)
    // 记录点击的子项id
    .onClick(() => {
      this.expenditureID = this.item.id
    })
  }
}


// 支出页内容
@Component
struct expensesPage {
  @Prop item: BillData.UseForCategory[]
  @Link expenditureID: number

  build() {
    // 订单
    Column({ space: 10 }) {

      ForEach(
        this.item,
        (item: BillData.UseForCategory) => {

          Column({ space: 20 }) {
            Text(item.title)
              .alignSelf(ItemAlign.Start)
              .fontColor(Color.Gray)
              .fontSize(14)
            Row({ space: 10 }) {

              ForEach(
                item.items,
                (project: BillData.UseForItem, index) => {
                  IconCom({ item: project, expenditureID: this.expenditureID })
                    .borderRadius(5)// 选中的高亮样式
                    .border(this.expenditureID === project.id ? { width: 1, color: '#5b8161' } : {
                      width: 1,
                      color: Color.Transparent
                    })
                    .backgroundColor(this.expenditureID === project.id ? '#dcf1e4' : Color.Transparent)
                }
              )
              // IconCom()
              //   .borderRadius(5)// 默认的样式
              //   .border({ width: 1, color: Color.Transparent })
              //   .backgroundColor(Color.Transparent)
            }
            .alignSelf(ItemAlign.Start)
          }
          .width('100%')
        }
      )

    }
    .padding(15)
    .width('100%')
    .borderRadius(25)
    .height(500)
    .backgroundColor(Color.White)
  }
}

