@Observed
class myclass {
  id: number = 0
  name: string = "123"
  bool: boolean = false
  // constructor(id: number, name: string, bool: boolean) {
  //   this.id = id
  //   this.name = name
  //   this.bool = bool
  // }
}

@Observed
class ReplyItem {
  id: number = 0
  likeNum: number = 0
  likeFlag: boolean = false

  constructor(id: number, likeNum: number, likeFlag: boolean) {
    this.id = id
    this.likeNum = likeNum
    this.likeFlag = likeFlag
  }
}

const myArrObj: myclass[] = [
  new myclass(),
  new myclass(),
  new myclass(),
  new myclass(),
  new myclass(),
]


const mytest: ReplyItem[] = [
  new ReplyItem(1, 34, false),
  new ReplyItem(1, 34, false),
  new ReplyItem(1, 34, false),
// {
//   id: 1,
//   likeNum: 34,
//   likeFlag: false
// },
]

let i = 0

// while (i < 10) {
//   i++
//   myArrObj.push(new myclass(Math.floor(Math.random() * 100), `${Math.random() * 10000000}`, false))
// }
// myArrObj.sort((a: myclass, b: myclass) => {
//   return a.id - b.id
// })

@Entry
@Component
struct Index {
  @State testArr: myclass[] = myArrObj
  @State mytesta: ReplyItem[] = mytest

  // @State maobj: myclass = new myclass(123, "test", false)

  build() {
    Column() {
      ForEach(
        this.testArr,
        (item: myclass) => {
          myComp({ item: item })
          myComp1({ item: this.mytesta[0] })
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

@Component
struct myComp1 {
  @ObjectLink item: ReplyItem

  build() {
    Row() {
      Text("id:" + this.item.id.toString())
      Text("likenum: " + this.item.likeNum)
    }
    .width("100%")
    .height(40)
    .justifyContent(FlexAlign.SpaceEvenly)
    .onClick(() => {
      this.item.likeFlag = !this.item.likeFlag
      this.item.likeFlag ? this.item.likeNum++ : this.item.likeNum--
      console.log("这个组件的id++了", JSON.stringify(this.item))
    })
  }
}