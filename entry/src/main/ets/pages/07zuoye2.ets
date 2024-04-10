// 默认的对象接口
interface Employee {
  username: string
  avatar: ResourceStr
  gender: string
  birth: number
}

// 转换之后的对象接口
interface EmployeeDate {
  username: string
  avatar: ResourceStr
  gender: string
  birth: string
}

// 原始数据
const employeeList: Employee[] = [
  {
    "username": "张珊",
    avatar: $r('app.media.user_01'),
    "gender": "女",
    "birth": 947836314000
  }, {
  "username": "张姗",
  avatar: $r('app.media.user_02'),
  "gender": "女",
  "birth": 1014969114000
}, {
  "username": "张杉",
  avatar: $r('app.media.user_03'),
  "gender": "女",
  "birth": 923125914000
}, {
  "username": "张彡",
  avatar: $r('app.media.user_04'),
  "gender": "女",
  "birth": 804498714000
}, {
  "username": "李思",
  avatar: $r('app.media.user_05'),
  "gender": "女",
  "birth": 1033545114000
}, {
  "username": "王舞",
  avatar: $r('app.media.user_06'),
  "gender": "女",
  "birth": 1075535514000
}]

const a: Date = new Date(1075535514000)
console.log(`${a.getFullYear()}`);

console.log(`${(new Date(1075535514000)).getFullYear()}`);

@Entry
@Component
struct FormatDate {
  // 渲染用数组，数据转换完毕之后赋值给他
  list: EmployeeDate[] = employeeList.map((item: Employee) => {
    const temp: EmployeeDate = {
      username: item.username,
      avatar: item.avatar,
      gender: item.gender,
      birth: item.birth.toString()
    }
    return temp
  })

  build() {
    Column() {
      Text('员工信息')
        .titleStyle()
      List({ space: 10 }) {


        ForEach(
          this.list,
          (item: EmployeeDate) => {

            ListItem() {
              Row({ space: 10 }) {
                Image(item.avatar)
                  .width(40)
                  .height(40)
                  .borderRadius(20)
                Text(item.username)
                  .fontWeight(900)
                Text(`${(new Date(parseInt(item.birth))).getFullYear()}-${(new Date(parseInt(item.birth))).getMonth()
                }-${(new Date(parseInt(item.birth))).getDay()}`)
                  .fontWeight(900)
                Text(item.gender)
                  .fontWeight(900)
              }
              .width('100%')
              .justifyContent(FlexAlign.Start)
            }
            .listStyle()
          }
        )

      }
      .padding(20)
    }
    .columnStyle()
  }

  @Styles
  columnStyle() {
    .padding(20)
    .backgroundColor('#f6f6f6')
    .height('100%')
  }

  @Styles
  listStyle() {
    .backgroundColor(Color.White)
    .width('100%')
    .padding(10)
    .borderRadius(10)
  }
}

@Extend(Text)
function titleStyle() {
  .width('100%')
  .border({ width: { left: 2 }, color: Color.Red })
  .padding(5)
  .fontWeight(900)
}