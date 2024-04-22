@Observed
class myFoods {
  title: string
  foods: string[]

  constructor(title: string, foods: string[]) {
    this.title = title
    this.foods = foods
  }
}

@Entry
@Component
struct Index {
  @State myfoods: myFoods[] = [
    new myFoods("猪脚饭", ["饭", "酸菜", "猪脚", "上海青", "卤豆腐"]),
    new myFoods("烧鸭饭", ["饭", "酸菜", "烧鸭", "上海青", "卤豆腐"]),
    new myFoods("卤鸡腿饭", ["饭", "酸菜", "卤鸡腿", "上海青", "卤豆腐"]),
    new myFoods("肉卷饭", ["饭", "酸菜", "肉卷", "上海青", "卤豆腐"]),
  ]

  build() {
    Column() {
      ForEach(
        this.myfoods,
        (item: myFoods) => {
          substance({ item: item })
        }
      )
      Button("查看数据")
        .onClick(() => {
          console.log("foods", JSON.stringify(this.myfoods))
        })
    }
  }
}

@Component
struct substance {
  @ObjectLink item: myFoods

  build() {
    Column({ space: 10 }) {
      Text(this.item.title).width("100%")
      Text(this.item.foods.join(", ")).width("100%")
      Row({ space: 15 }) {
        Button("改变title")
          .onClick(() => {
            this.item.title = "烧鸭饭"
          })
        Button("改变foods")
          .onClick(() => {
            this.item.foods[2] = "烧鸭"
            this.item.foods = [...this.item.foods]
            console.log("" + this.item.foods)
          })
      }
    }
    .padding(10)
    .margin(10)
  }
}