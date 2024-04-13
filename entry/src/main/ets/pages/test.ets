@Observed
class myclass {
  id: number
  name: string
  bool: boolean

  constructor(id: number, name: string, bool: boolean) {
    this.id = id
    this.name = name
    this.bool = bool
  }
}

const myArrObj: myclass[] = []

let i = 0
while (i < 10) {
  i++
  myArrObj.push(new myclass(Math.floor(Math.random() * 100), `${Math.random() * 10000000}`, false))
}
myArrObj.sort((a: myclass, b: myclass) => {
  return a.id - b.id
})

@Entry
@Component
struct Index {
  @State testArr: myclass[] = myArrObj
  @State maobj: myclass = new myclass(123, "test", false)

  build() {
    Column() {

      myComp({ item: this.maobj })
      ForEach(
        this.testArr,
        (item: myclass) => {
          myComp({ item: item })
        }
      )
    }
  }
}


@Component
struct myComp {
  @ObjectLink item: myclass

  build() {
    Row() {
      Text("id:" + this.item.id.toString())
      Text("name: " + this.item.name)
    }
    .width("100%")
    .height(40)
    .justifyContent(FlexAlign.SpaceEvenly)
    .onClick(() => {
      this.item.bool = !this.item.bool
      this.item.bool ? this.item.id++ : this.item.id--
      console.log("这个组件的id++了")
    })
  }
}