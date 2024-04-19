interface qwe {
  name: string
}


const mytext: qwe = {
  name: "测试一下~~"
}

const mytext1: qwe = {
  name: "测试一下~~1111"
}

let logotype = new LocalStorage(mytext)

// logotype = new LocalStorage(mytext1)


@Entry(logotype)
@Component
struct Page_14yingyong {
  @State message: string = 'Hello World';
  @LocalStorageLink("name")
  name: string = "123"
  @StorageLink("bbb")
  bbb: string = ""

  build() {
    Row() {
      Column() {
        Text(this.name)
        Text(this.bbb)
        Text("标识:")
      }
      .width('100%')
    }
    .height('100%')
  }
}