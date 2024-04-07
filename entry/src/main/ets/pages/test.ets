@Entry
@Component
struct Index {
  @State text1: string = "a"
  @State text2: string = this.text1

  build() {
    Column({ space: 20 }) {
      myButton({
        text: this.text1, fn: () => {
          // console.log(this.text1)
          this.text1 = "bbb"
        }
      })
      myButton({
        text: this.text2, fn: () => {
          // console.log(this.text2)
          this.text2 = "ccc"
        }
      })

      // 点击回调
      myButton1(() => {
        this.text1 = "123"

      })
    }
    .width("100%")
  }
}

// 定义一个接口类型, 提供给button构建函数$$双向绑定时使用
interface buttonText {
  text: string
  fn: () => void
}

// $$ 双向绑定
@Builder
// 使用export导出全局builder, 提供给其他模块使用
export function myButton($$: buttonText) {
  Button($$.text)
    .width(80)
    .onClick(() => {
      // console.log($$.text)
      $$.fn()
    })
}

// 点击回调
@Builder
export function myButton1(fn: () => void) {
  Button("点我")
    .width(80)
    .onClick(() => {
      // console.log($$.text)
      fn()
    })
}