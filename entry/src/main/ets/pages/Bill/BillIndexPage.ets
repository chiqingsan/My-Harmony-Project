import { promptAction, router } from '@kit.ArkUI'
import * as BillData from "../../Data/BillData"

// 定义一个接收路由传递过来的数据结构接口
interface billingInformation {
  id: number
  price: number
  type: BillData.BillType
  date: string
}

// 账单结构
class mylistOfBills implements BillData.UseForItem {
  id: number
  icon: ResourceStr
  name: string
  price: number
  type: BillData.BillType
  date: string

  constructor(id: number, icon: ResourceStr, name: string, price: number, type: BillData.BillType, date: string) {
    this.id = id
    this.icon = icon
    this.name = name
    this.price = price
    this.type = type
    // 使用时间戳作为数据持久化的名字,避免重复名覆盖
    this.date = date
  }
}


// 处理路由回传数据,返回用于账单列表渲染的数据类型
// 由于路由传递icon失败, 所以改用此方法
function handlePostbackData(item: billingInformation): mylistOfBills {
  let tempname: string = ""
  let tempicon: ResourceStr = ""
  if (!item.type) {
    BillData.payBillCategoryList.forEach((value) => {
      value.items.forEach((list) => {
        if (list.id === item.id) {
          tempname = list.name
          tempicon = list.icon
        }
      })
    })
  } else {
    BillData.inComBillCategoryList.forEach((value) => {
      value.items.forEach((list) => {
        if (list.id === item.id) {
          tempname = list.name
          tempicon = list.icon
        }
      })
    })
  }

  return new mylistOfBills(item.id, tempicon, tempname, item.price, item.type, item.date)
}

// 算总支出收入
function totalSpending(item: mylistOfBills[]) {
  return item.reduce((a: number, b: mylistOfBills) => {
    return a + b.price
  }, 0)
}

// 初始化 PersistentStorage, 持久化一个空数组
const myBill = "myBill"
PersistentStorage.persistProp<string>(myBill, JSON.stringify([]))


@Entry
@Component
struct Billd_IndexPage {
  // 账单列表初始内容
  @State listOfBills: mylistOfBills[] = []
  // 初始内容:
  // new mylistOfBills(1, $r('app.media.food'), "餐费", -23, BillData.BillType.Pay)
  // 记录支出
  @State expenditure: number = 0
  // 记录收入
  @State revenue: number = 0
  // 记录结余
  @State balance: number = 0
  @StorageProp("mymessage")
  mymessage: string = ""

  // 在创建页面时, 对持久化数据进行取出处理
  aboutToAppear(): void {
    const arrayOfBills = AppStorage.get(myBill) as string
    const list = JSON.parse(arrayOfBills) as mylistOfBills[]
    this.listOfBills = [...list]

    promptAction.showToast({
      message: this.mymessage,
      duration: 2000
    })

    const link = AppStorage.link<string>("mymessage")
    link.set("改变了噢")
    console.log("message:" + "改变了噢~");

  }

  // 当页面重新显示的时候, 开始处理数据
  onPageShow(): void {
    if (router.getParams() && this.listOfBills.findIndex(v => v.date === (router.getParams() as billingInformation).date) === -1) {
      this.listOfBills.push(handlePostbackData(router.getParams() as billingInformation))
      // 添加持久化数据
      AppStorage.set(myBill, JSON.stringify(this.listOfBills))

    }
    this.refreshTheData()
  }

  // 刷新支出收入数据
  refreshTheData() {
    this.expenditure = totalSpending(this.listOfBills.filter(v => v.price < 0))
    this.revenue = totalSpending(this.listOfBills.filter(v => v.price > 0))
    this.balance = this.revenue + this.expenditure
  }

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      Column({ space: 10 }) {

        // 顶部区域
        Column({ space: 30 }) {
          Text('账单合计')
            .fontSize(25)
            .width('100%')

          Row() {
            BillInfo({
              billName: '支出',
              billNum: this.expenditure.toString()
            })
            BillInfo({
              billName: '收入',
              billNum: this.revenue.toString()
            })
            BillInfo({
              billName: '结余',
              billNum: this.balance.toString()
            })

          }
        }
        .width('100%')
        .height(140)
        .backgroundImage($r('app.media.bill_title_bg'))
        .backgroundImageSize({ width: '100%', height: '100%' })
        .padding(20)

        // 账单区域
        List({ space: 10 }) {
          ForEach(
            this.listOfBills,
            (item: mylistOfBills, index) => {
              ListItem() {
                DailyBillSection({ item: item })
              }
              .swipeAction({
                end: this.delSection(item.date)
              })
            }, (item: mylistOfBills, index) => {
            return item.date
          })

        }
        .width('100%')
        .layoutWeight(1)
        .scrollBar(BarState.Off)
      }
      .padding(10)
      .width('100%')

      // 添加按钮
      AddButton()

    }
    .height('100%')
    .backgroundColor('#f6f6f6')
  }

  // 删除标签
  @Builder
  delSection(date: string) {
    Image($r('app.media.ic_public_delete_filled'))
      .objectFit(ImageFit.Contain)
      .fillColor('#ec6073')
      .width(30)
      .margin(5)
      .onClick(() => {
        animateTo({
          duration: 1000,
          curve: Curve.Ease
        }, () => {
          this.listOfBills.splice(this.listOfBills.findIndex(v => v.date === date), 1)
        })
        AppStorage.set(myBill, JSON.stringify(this.listOfBills))
        this.refreshTheData()
      })
  }
}

@Component
struct BillInfo {
  @Prop billName: string = ''
  @Prop billNum: string = ''

  build() {
    Column({ space: 10 }) {
      Text(this.billNum)
        .fontSize(20)
      Text(this.billName)
        .fontSize(12)
    }
    .layoutWeight(1)
    .alignItems(HorizontalAlign.Start)
  }
}

@Component
struct DailyBillSection {
  @Prop item: mylistOfBills

  build() {

    // 分割线
    Row({ space: 10 }) {
      Image(this.item.icon)
        .width(20)
      Text(this.item.name)
      Blank()
      Text(this.item.price.toString())// .fontColor(this.billItem.money! > 0 ? Color.Black : '#ff8c7b')
        .fontColor(this.item.type ? Color.Black : '#ff8c7b')
      // 根据是否为支付调整颜色
      // 支付：#ff8c7b
      // 收入：Color.Black
    }
    .width('100%')
    .borderRadius(10)
    .padding(15)
    .backgroundColor(Color.White)
    .transition({
      type: TransitionType.Delete,
      translate: { x: "-60%" }
    })

  }
}

@Component
struct AddButton {
  build() {
    Image($r('app.media.ic_public_add_filled'))
      .width(40)
      .fillColor('#8e939d')
      .padding(5)
      .borderRadius(20)
      .border({ width: 1, color: '#8e939d' })
      .translate({ x: -20, y: -20 })
      .backgroundColor('#f6f6f6')// 路由跳转至添加账单页面
      .onClick(() => {
        router.pushUrl({
          url: "pages/Bill/BillAddPage"
        })
      })
  }
}

