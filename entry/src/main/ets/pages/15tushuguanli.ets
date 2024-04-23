import { promptAction, router } from '@kit.ArkUI'
import { http } from '@kit.NetworkKit'

// 图书格式
export interface Book {
  id: number
  bookname: string
  author: string
  publisher: string
}

// 数据提交的格式
export interface submissionFormat {
  bookname: string
  author: string
  publisher: string
  creator: string
}

// 用户名
export const creator: string = 'chiqingsan'

// 封装http请求
export function requestABook(parameter: string, method: http.RequestMethod = http.RequestMethod.GET, body?: submissionFormat | string) {
  const myhttp = http.createHttp()
  return myhttp.request(
    "https://hmajax.itheima.net/api/books" + parameter,
    {
      method: method,
      header: { contentType: "application/json" },
      extraData: body,
      expectDataType: http.HttpDataType.OBJECT
    }
  )


}

@Entry
@Component
struct Day02_01_BookShelf {
  creator: string = creator
  @State books: Book[] = []
  // [{
  //   "id": 366351,
  //   "bookname": "《西游记》",
  //   "author": "吴承恩",
  //   "publisher": "人民文学出版社"
  // }]
  @State isLoading: boolean = true

  onPageShow(): void {
    requestABook(`/?creator=${creator}`)
      .then(res => {
        // console.log("res", JSON.stringify(res.result))
        this.books = [...res.result["data"] as Book[]]
      })
  }

  build() {
    Column() {
      // 头部
      this.HeaderBuilder()

      if (this.books.length === 0) {
        LoadingProgress()
          .enableLoading(this.isLoading)
          .width(80)
          .margin(10)
          .onDisAppear(() => {
            promptAction.showToast({
              message: "加载完成~",
              duration: 600
            })
          })
        Text("Loading ")
          .fontSize(26)
          .fontWeight(700)
      } else {
        List({ space: 15 }) {
          ForEach(this.books, (item: Book) => {
            ListItem() {
              bookItem({ data: item })
            }
            .swipeAction({
              end: () => {
                this.itemEnd(item)
              },
              edgeEffect: SwipeEdgeEffect.Spring
            })
          }, (item: Book) => JSON.stringify(item))
        }
        .padding({
          top: 12,
          bottom: 55,
          left: 12,
          right: 12,
        })
      }
    }
    .height('100%')
    .width('100%')
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(20)
        .onClick(() => {
          promptAction.showDialog({
            title: "删除全部图书",
            message: "确定要删除全部的图书吗?",
            buttons: [
              { text: "取消", color: "#555" },
              { text: "确认", color: "#000" }
            ]
          }, (err, data) => {
            // console.log("data", JSON.stringify(data))
            if (data.index === 1) {
              this.books.forEach((item: Book) => {
                requestABook(`/${item.id}`, http.RequestMethod.DELETE)
              })
              this.books = []
            }
          })
        })

      Text('我的书架')
        .fontSize(25)
        .fontWeight(500)

      Image($r('app.media.ic_public_add'))
        .width(20)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Day02_01_BookShelf_Add'
          })
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .height(60)
    .padding(10)
    .border({ width: { bottom: 2 }, color: '#f0f0f0' })
    .backgroundColor(Color.White)
  }

  @Builder
  itemEnd(item: Book) {
    Row() {
      Button('删除')
        .type(ButtonType.Normal)
        .fontWeight(700)
        .borderRadius(20)
        .backgroundColor('#fff75654')
        .onClick(() => {
          // AlertDialog.show({ message: '点了删除' })
          promptAction.showDialog({
            title: "删除图书",
            message: `确认要删除${item.bookname}吗?`,
            buttons: [
              { text: "取消", color: "#555" },
              { text: "确认", color: "#000" }
            ]
          }, (err, data) => {
            console.log("data", JSON.stringify(data))
            if (data.index === 1) {
              animateTo({
                duration: 1000,
                curve: Curve.EaseOut
              }, () => {
                this.books.splice(this.books.findIndex(v => v.id === item.id), 1)
              })

              requestABook(`/${item.id}`, http.RequestMethod.DELETE)
                .then(res => {
                  console.log("del", JSON.stringify(res.result))
                })
              requestABook(`/?creator=${creator}`)
                .then(res => {
                  // console.log("res", JSON.stringify(res.result))
                  this.books = [...res.result["data"] as Book[]]
                })
            }
          })
        })
        .height('100%')
    }

  }
}

@Component
struct bookItem {
  data: Partial<Book> = {}
  @State imgpath: string | ResourceStr = $r('app.media.ic_public_cover')

  aboutToAppear(): void {
    const httpimg = http.createHttp()
    httpimg.request("https://loremflickr.com/143/300/cat")
      .then((res) => {
        console.log("imgres", JSON.stringify(res.header))
        this.imgpath = "https://loremflickr.com/" + res.header["location"]
      })
  }

  build() {
    Row({ space: 10 }) {
      Image(this.imgpath)
        .width(100)
        .aspectRatio(.7)
        .borderRadius(12)
      Column({ space: 12 }) {

        Text('书名：' + this.data.bookname)
          .fontSize(20)
          .fontWeight(600)
        Text('作者：' + this.data.author)
          .fontSize(14)
          .fontColor(Color.Gray)
        Blank()
        Text('出版社: ' + this.data.publisher)
          .fontSize(14)
          .fontColor(Color.Gray)
      }
      .padding({ top: 10, bottom: 10 })
      .height(130)
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .onClick(() => {
      router.pushUrl({
        url: "pages/Day02_01_BookShelf_Add",
        params: {
          id: this.data.id
        }
      })
    })
    .transition({
      type: TransitionType.All,
      translate: {
        x: "-60%"
      }
    })
  }
}