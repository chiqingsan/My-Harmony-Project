

@Entry
@Component
struct Index {

  @State userName:string = ""
  @State userPassword:string = ""

  build() {
    Column({space:15}){
      // maTextInput({ text:"用户名", userinfo: this.userName , cd:(val) => {this.userName = val}})
      // maTextInput({ text:"密码", userinfo:this.userPassword, password:true , cd: (val) => {this.userPassword = val}})

      Row({space:20}){
        Button("登陆")
          .onClick( () => {
            this.add()
          })
        Button("重置")
          .onClick( () =>{
            this.abb()
          })
      }
    }
    .backgroundColor(Color.White)
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }

  abb () {
    this.userPassword = ''
    this.userName = ''
  }

  add () {
    console.log(`${this.userName}---${this.userPassword}`)
  }
}


@Styles
function myInputStyleNormal () {
  .backgroundColor(Color.Gray)
}

@Styles
function myInputStylePressed () {
  .backgroundColor(Color.Red)
}

@Styles
function myInputStyleFocused () {
  .backgroundColor(Color.Yellow)
}


interface inputInfo {
  text:string ,
  userinfo:string,
  password?:boolean ,
  cd:(val:string) => void
}

@Builder
function maTextInput($$:inputInfo) {

  Row({space:10}){
    Text($$.text)
    TextInput({text:$$.userinfo})
      .type($$.password ? InputType.Password : InputType.Normal)
      .layoutWeight(1)
      .onChange( (val) => {
        $$.cd(val)
      })
      .stateStyles({
        normal:myInputStyleNormal,
        pressed:myInputStylePressed,
        focused:myInputStyleFocused
      })
  }
  .width(300)
}