@Entry
@Component
struct Index {
  sss: Function[] = [
    this.fun1,
    this.fun2,
    this.fun3,
  ]
  @State userName: string = ""
  @State userPassword: string = ""
  @State test: string = "123131313"

  @Builder
  fun1() {
    Text("1")
  }

  @Builder
  fun2() {
    Text("2")

  }

  @Builder
  fun3() {
    Text("3")

  }

  build() {
    Column({ space: 20 }) {


      userInputInfo({
        substance: "账号", userinfo: this.userName, cd: (val) => {
          this.userName = val
        }
      })
      userInputInfo({
        substance: "密码", userinfo: this.userPassword, password: true, cd: (val) => {
          this.userPassword = val
        }
      })


      Row({ space: 20 }) {
        Button("登陆")
          .onClick(() => {
            console.log(`${this.userName} --- ${this.userPassword}`)
            this.test = "1111"
            console.log(`${this.test}`)
          })
        Button("重置")
          .onClick(() => {
            this.userName = ""
            this.userPassword = ""
          })
      }

    }
    .height("60%")
    .justifyContent(FlexAlign.Center)

  }
}

interface InputValueInfo {
  substance: string
  userinfo: string,
  password?: boolean,
  cd: (val: string) => void
}

@Builder
function userInputInfo($$: InputValueInfo) {
  Row({ space: 20 }) {
    Text($$.substance);
    TextInput({
      text: $$.userinfo
    })
      .type($$.password ? InputType.Password : InputType.Normal)
      .layoutWeight(1)
      .onChange((value) => {
        console.log(`${$$.userinfo}`)
        $$.cd(value)
      })
  }
  .padding({ left: 12, right: 12 })
}


@Builder
function userInput() {
  Row({ space: 20 }) {

  }
  .padding({ left: 12, right: 12 })
  .onClick(() => {

  })
}
