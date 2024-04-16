import { router } from '@kit.ArkUI'
import * as BillData from "../../common/BillData"

// 定义一个接收路由传递过来的数据结构接口
interface billingInformation {
  id: number
  price: number
  type: BillData.BillType
}

// 账单结构
class mylistOfBills implements BillData.UseForItem {
  id: number
  icon: ResourceStr
  name: string
  price: number
  type: BillData.BillType
  date: string

  constructor(id: number, icon: ResourceStr, name: string, price: number, type: BillData.BillType) {
    this.id = id
    this.icon = icon
    this.name = name
    this.price = price
    this.type = type
    // 使用时间戳作为数据持久化的名字,避免重复名覆盖
    this.date = Date.now().toString()
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
          console.log(list.name)
          console.log(JSON.stringify(list.icon))
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

  return new mylistOfBills(item.id, tempicon, tempname, item.price, item.type)
}

// 算总支出收入
function totalSpending(item: mylistOfBills[]) {
  return item.reduce((a: number, b: mylistOfBills) => {
    return a + b.price
  }, 0)
}

@Entry
@Component
struct Billd_IndexPage {
  // 账单列表初始内容
  @State listOfBills: mylistOfBills[] = [
    new mylistOfBills(1, $r('app.media.food'), "餐费", -23, BillData.BillType.Pay)
  ]
  // 记录支出
  @State expenditure: number = 0
  // 记录收入
  @State revenue: number = 0
  // 记录结余
  @State balance: number = 0

  // 当页面重新显示的时候, 开始处理数据
  onPageShow(): void {
    // const temp = router.getParams() as mylistOfBills
    // console.log("router", JSON.stringify(temp))
    if (router.getParams()) {
      this.listOfBills.push(handlePostbackData(router.getParams() as billingInformation))
      // const mytempdata: mylistOfBills = handlePostbackData(router.getParams() as billingInformation)
      // PersistentStorage.persistProp<string>(mytempdata.date, JSON.stringify(mytempdata))
      // console.log("cqs12313132")
    }
    this.refreshTheData()
    // 初始化 数据持久化

    // this.listOfBills.forEach((item) => {
    //   console.log("cqs正在持久化:", item.name)
    //   PersistentStorage.persistProp<string>(item.date, JSON.stringify(item))
    //   AppStorage.set(item.date, JSON.stringify(item))
    // })
    //
    // let keys: Array<string> = PersistentStorage.keys();
    // console.log("cqsksys", keys)
    // console.log("cqsksys内容:", AppStorage.get(keys[0]))
    //
    // keys.forEach((item) => {
    //   if (this.listOfBills.findIndex(v => v.date == item) === -1) {
    //     this.listOfBills.push(JSON.parse(AppStorage.get(item) as string))
    //   }
    // })
    //
    // console.log("cqslist", JSON.stringify(this.listOfBills))
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
        .onClick(() => {
          console.log(PersistentStorage.keys().toString())
        })

        // 账单区域
        List({ space: 10 }) {
          ForEach(
            this.listOfBills,
            (item: mylistOfBills, index) => {
              ListItem() {
                // DailyBillSection({ item: JSON.parse(AppStorage.get(item.name) as string) })
                DailyBillSection({ item: item })
              }
              .swipeAction({
                end: this.delSection(item, index)
              })
            }
          )

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
  delSection(item: mylistOfBills, index: number) {
    Image($r('app.media.ic_public_delete_filled'))
      .objectFit(ImageFit.Contain)
      .fillColor('#ec6073')
      .width(30)
      .margin(5)
      .onClick(() => {
        this.listOfBills.splice(index, 1)
        // AppStorage.delete(item.date)
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

