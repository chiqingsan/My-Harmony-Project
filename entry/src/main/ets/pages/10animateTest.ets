interface myint {
  id: number
  name: string
  isshow: boolean
}

@Entry
@Component
struct Index {
  private myid: number = 0
  @State myArr: myint[] = [
    { id: this.myid++, name: `${Math.floor(Math.random() * 1000000)}`, isshow: false },
    { id: this.myid++, name: `${Math.floor(Math.random() * 1000000)}`, isshow: false },
    { id: this.myid++, name: `${Math.floor(Math.random() * 1000000)}`, isshow: false },
    { id: this.myid++, name: `${Math.floor(Math.random() * 1000000)}`, isshow: false },
    { id: this.myid++, name: `${Math.floor(Math.random() * 1000000)}`, isshow: false },
  ]

  build() {

    Column() {

      ForEach(
        this.myArr,
        (item: myint, index) => {

          Row() {
            Text("id:" + item.id.toString())
            Text(item.name)
            Button("删除")
          }
          .width("100%")
          .justifyContent(FlexAlign.SpaceAround)
          .padding(10)
          .margin(10)
          .onClick(() => {
            animateTo({
              duration: 1000,
              curve: Curve.Ease
            }, () => {
              this.myArr.splice(index, 1)
            })
          })

        }
      )
    }
    .width("100%")
    .padding(20)
    .backgroundColor("#36d")
    .border({
      width: 3,
      color: Color.Red,
      radius: 10
    })

  }
}