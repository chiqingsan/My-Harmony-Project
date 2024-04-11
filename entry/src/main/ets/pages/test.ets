const colors = [
  '#FF0000', // 红色
  '#00FF00', // 绿色
  '#0000FF', // 蓝色
  '#FFFF00', // 黄色
  '#FF00FF', // 粉红色
  '#00FFFF', // 青色
  '#800000', // 栗色
  '#008000', // 深绿色
  '#000080', // 深蓝色
  '#808000', // 橄榄色
  '#800080', // 紫色
  '#008080', // 碧绿色
  '#C0C0C0', // 银色
  '#808080', // 灰色
  '#FFA500', // 橙色
  '#A52A2A', // 棕色
  '#FF0000', // 红色
  '#00FF00', // 绿色
  '#0000FF', // 蓝色
  '#FFFF00', // 黄色
  '#FF00FF', // 粉红色
  '#00FFFF', // 青色
  '#800000', // 栗色
  '#008000', // 深绿色
  '#000080', // 深蓝色
  '#808000', // 橄榄色
  '#800080', // 紫色
  '#008080', // 碧绿色
  '#C0C0C0', // 银色
  '#808080', // 灰色
  '#FFA500', // 橙色
  '#A52A2A', // 棕色
  '#C0C0C0', // 银色
  '#808080', // 灰色
  '#FFA500', // 橙色
  '#A52A2A',// 棕色

];

@Observed
class color {
  color: string
  num: number

  constructor(color: string, num: number) {
    this.color = color
    this.num = num
  }
}

@Entry
@Component
struct Index {
  @State rownumstart: number = 0
  @State columnnumstart: number = 0
  @State rownumend: number = 2
  @State columnnumend: number = 1
  @State test: color[] = [
    new color("#123", 4),
    new color("#456", 4),
    new color("#678", 4),
    new color("#235", 4),
    new color("#653", 4),
    new color("#15a", 4),
    new color("#1a1", 4),
    new color("#a1a", 4),
    new color("#a3a", 4),
    new color("#a33", 4),
    new color("#22a", 4),
    new color("#a11", 4),
  ]

  build() {
    Column() {
      myGrid({ test: this.test[1] })
    }
    .width("100%")
    .aspectRatio(1)

  }
}

@Component
struct myGrid {
  @ObjectLink test: color

  build() {
    Column()
      .width("100%")
      .height("100%")
      .backgroundColor("#ccc")
      .onClick(() => {
        console.log(JSON.stringify(this.test));
      })
    // Grid() {
    //   ForEach(
    //     this.test,
    //     (item: color, index) => {
    //       GridItem()
    //         .rowStart(0)
    //         .rowEnd(item.num)
    //         .columnStart(0)
    //         .columnEnd(item.num)
    //         .backgroundColor(item.color)
    //         .borderRadius(99)
    //         .onHover(() => {
    //           console.log("移入:我是第" + index + "个GridItem")
    //         })
    //         .onMouse(() => {
    //           console.log("移入或点击:我是第" + index + "个GridItem")
    //         })
    //         .onClick(() => {
    //           console.log("点击:我是第" + index + "个GridItem")
    //           this.test[index].num = item.num - 1
    //         })
    //     }
    //   )
    // }
    // .rowsTemplate("1fr 1fr 1fr 1fr 1fr 1fr")
    // .columnsTemplate("1fr 1fr 1fr 1fr 1fr 1fr ")
  }
}