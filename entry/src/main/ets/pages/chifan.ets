//食物信息
import { cloudSync } from '@kit.CoreFileKit'
import { b, c } from '../common/PublicClass'

@Observed
class foodInfo {
  id: number
  name: string
  degreeOfDeflection: number

  constructor(name: string) {
    this.id = Date.now()
    this.name = name
    this.degreeOfDeflection = 10
  }
}

@Entry
@Component
struct Index {
  @State canteenList: foodInfo[] = [
    new foodInfo("鱼粉"),
    new foodInfo("杀猪粉"),
    new foodInfo("猪脚饭"),
    new foodInfo("凉皮"),
    new foodInfo("螺蛳粉"),
    new foodInfo("叉烧烤鸭饭"),
    new foodInfo("麻辣烫"),
    new foodInfo("疯狂星期四"),
    new foodInfo("盖浇饭"),
    new foodInfo("不吃"),
  ]
  @State outsideTheFlyoverList: foodInfo[] = []
  // 选定结果
  @State outcome: string = ""
  // 添加菜品半模态显隐控制
  @State addIsShow: boolean = false
  @State addADishName: string = ""

  build() {
    Column() {

      // title标题
      Row() {
        Text("吃饭选择器:")
          .mytextsytle(24, 500, "#D05A6E")
          .width("100%")
      }
      .padding(18)

      Divider()
        .width("95%")
        .strokeWidth("4px")

      Column({ space: 10 }) {
        Button("开始选择吃什么!")
          .width("80%")
          .onClick(() => {

            // 初始化权重总和
            let sumOfWeights: number = 0
            // 计算全部权重总和
            this.canteenList.forEach((item) => {
              sumOfWeights += item.degreeOfDeflection
            })
            // 创建权重占比的数组
            const randomWeight: number[] = []
            this.canteenList.forEach((item) => {
              randomWeight.push(item.degreeOfDeflection / sumOfWeights)
            })

            console.log("", randomWeight)

            // 获取一个随机数
            const temporaryNonce: number = Math.random()

            // 用来判断随机数的落点
            let tempadd: number = 0

            // 循环来寻找随机数的落点
            for (let i = 0; i < randomWeight.length; i++) {
              if (randomWeight[i] != 0) {
                tempadd += randomWeight[i]
                console.log(`${temporaryNonce}--${tempadd}`)
                if (temporaryNonce <= tempadd) {
                  this.outcome = this.canteenList[i].name
                  break
                }
              } else {
                continue
              }
            }
          })

        // 结果显示区
        Row() {
          Text(`吃这个: `)
          if (this.outcome) {
            Text(`${this.outcome}`)
              .border({
                width: 1,
                color: "#ff959595",
                radius: 3
              })
              .padding(3)
          }
        }
        .height(30)
        .width("60%")

      }
      .margin(10)

      // 内容区
      Row({ space: 20 }) {
        Text("地点:")
        Button("饭堂")
          .mybuttonstyle()
        Button("天桥外")
          .mybuttonstyle()
      }
      .margin({ bottom: 20 })


      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.Center, wrap: FlexWrap.Wrap }) {
        ForEach(
          this.canteenList,
          (item: foodInfo) => {
            foods({ item: item })
          }
        )
      }
      .border({
        width: 1,
        color: "#000",
        radius: 10
      })
      .width("100%")


      // 添加菜品
      Button("添加菜品")
        .position({ x: "50%", y: "100%", })
        .translate({ x: "-50%", y: "-20%", })
        .width("80%")
        .bindSheet($$this.addIsShow, this.addDishes(), {
          height: SheetSize.FIT_CONTENT
        })
        .onClick(() => {
          this.addIsShow = !this.addIsShow
        })
    }
    .padding({ left: 10, right: 10, bottom: 40 })
    .backgroundColor("#ccededed")
    .height("100%")
    .width("100%")
  }

  // 添加菜品的半模态
  @Builder
  addDishes() {
    Column({ space: 20 }) {
      Text("添加菜品")
        .mytextsytle(24, 600, "#ff797979")

      Row({ space: 10 }) {
        Text("菜品名字: ")
        TextInput({
          placeholder: "输入菜品的名字...",
          text: $$this.addADishName
        })
          .layoutWeight(1)
      }
      .width("80%")

      Button("确认添加")
        .width("80%")
        .onClick(() => {
          this.canteenList.push(new foodInfo(this.addADishName))
          this.addADishName = ""
        })
    }
    .padding({ top: 20, bottom: 20 })
  }
}


@Component
struct foods {
  @ObjectLink item: foodInfo

  build() {
    Column() {
      Text(this.item.name)
        .margin(5)
      Row() {
        Text("偏好度:")
          .fontSize(10)
        Slider({ value: this.item.degreeOfDeflection, min: 0, max: 20 })
          .onChange((val) => {
            this.item.degreeOfDeflection = val
            console.log(this.item.degreeOfDeflection.toString())
          })
          .showTips(true)
          .layoutWeight(1)
      }
    }
    .width("44%")
    .margin(10)
    .padding(5)
    .border({
      width: 1,
      color: "#ccc",
      radius: 10
    })
  }
}

@Extend(Text)
function mytextsytle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}

@Extend(Button)
function mybuttonstyle() {
  .height(35)
  .backgroundColor("#00000000")
  .border({
    width: 1,
  })
  .fontColor("#000")
}