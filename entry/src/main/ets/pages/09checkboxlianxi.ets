@Entry
@Component
struct CheckBoxGroupPage {
  fruits: string[] = ['优菈', '娜维娅', '宵宫', '夜兰']
  @State checked: string[] = []

  build() {
    Column() {
      Row() {
        CheckboxGroup({ group: "vegetable" })
          .selectedColor(Color.Red)
          .onChange((obj: CheckboxGroupResult) => {
            // console.log("123")
            console.log("obj", JSON.stringify(obj))
            this.checked = obj.name
            if (!obj.status) {
              this.checked.unshift("我全都要!!! ")
            }
          })
        Text('全选/全不选')
      }

      Column() {
        ForEach(this.fruits, (item: string, index: number) => {
          Row() {
            Checkbox({ name: item, group: 'vegetable' })
              .selectedColor(Color.Green)

            Text(item)
          }
        })
      }
      .padding({ left: 20 })
      .alignItems(HorizontalAlign.Start)

      Row() {
        Text("选中的是:" + this.checked)
      }
    }.padding(20)
    .alignItems(HorizontalAlign.Start)

  }
}