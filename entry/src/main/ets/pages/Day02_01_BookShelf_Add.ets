import { promptAction, router } from '@kit.ArkUI'
import { Book, creator, requestABook, submissionFormat } from './15tushuguanli'
import { http } from '@kit.NetworkKit'

@Entry
@Component
struct BookShelf_Add {
  // 书名
  @State bookname: string = ''
  // 作者
  @State author: string = ''
  // 出版社
  @State publisher: string = ''
  // 书的id
  bookid: number = 0
  // 节流阀, 防止重复提交 false表示没有提交任务, true表示正在提交
  ispush: boolean = false

  aboutToAppear(): void {
    if (router.getParams()) {
      const id = router.getParams() as object
      // console.log("id", JSON.stringify(id))
      requestABook(`/${id["id"]}`)
        .then(res => {
          const book: Book = res.result["data"] as Book
          console.log("book", JSON.stringify(book))
          this.bookname = book.bookname
          this.author = book.author
          this.publisher = book.publisher
          this.bookid = id["id"]
        })
    }
  }

  build() {
    Navigation() {
      Column({ space: 10 }) {
        Row() {
          Text('图书姓名:')
          TextInput({
            placeholder: '请输入图书名字',
            text: $$this.bookname
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()
        Row() {
          Text('图书作者:')
          TextInput({
            placeholder: '请输入图书作者',
            text: $$this.author
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()
        Row() {
          Text('图书出版社:')
          TextInput({
            placeholder: '请输入图书出版社',
            text: $$this.publisher
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()


        Button('保存')
          .width('100%')
          .margin({ top: 20 })
          .type(ButtonType.Normal)
          .borderRadius(10)
          .onClick(async () => {
            // 检验输入
            if (this.bookname && this.author && this.publisher) {
              const myboos: submissionFormat = {
                bookname: this.bookname,
                author: this.author,
                publisher: this.publisher,
                creator: creator
              }

              if (!this.ispush) {
                this.ispush = true
                if (router.getParams()) {
                  const res = await requestABook(`/${this.bookid}`, http.RequestMethod.PUT, myboos)
                  this.ispush = false
                  console.log("JSON1", JSON.stringify(res.result))
                } else {
                  const res = await requestABook("", http.RequestMethod.POST, myboos)
                  this.ispush = false
                  console.log("JSON2", JSON.stringify(res.result))
                }
              }

              router.back({
                url: "pages/15tushuguanli"
              })
            } else {
              promptAction.showToast({
                message: "请把图书信息填写完整噢~"
              })
            }
          })

      }
      .padding(20)
    }
    .title('新增图书')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
  }
}