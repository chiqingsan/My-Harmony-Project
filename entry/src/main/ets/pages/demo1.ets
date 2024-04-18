// 创建类,用Observed监控实例的改变
@Observed
class myClass {
  name1: string
  name2: string

  constructor(name1: string, name2: string) {
    this.name1 = name1
    this.name2 = name2
  }
}

@Entry
@Component
struct Index {
  // 初始赋值
  @State myVariable: myClass = new myClass("我是组件", "我是插槽")

  build() {
    Column() {
      MySubassembly({ myVariable: this.myVariable, mybuilder_a: this.mybuilder_a })
      Button("点击改变name1")
        .onClick(() => {
          this.myVariable.name1 = "我改变了n1"
          console.log(JSON.stringify(this.myVariable))
        })
      Button("点击改变name2")
        .onClick(() => {
          this.myVariable.name2 = "我改变了n2"
          console.log(JSON.stringify(this.myVariable))
        })
    }
  }

  @Builder
  mybuilder_a(myVariable: myClass) {
    Text(this.myVariable.name2)
  }
}

@Component
struct MySubassembly {
  @ObjectLink myVariable: myClass
  @BuilderParam mybuilder_a: (myVariable: myClass) => void

  build() {

    Row({ space: 10 }) {
      Text(this.myVariable.name1)
      this.mybuilder_a(this.myVariable)
    }
  }
}