import { router } from '@kit.ArkUI';

export interface myname {
  name: string
  age: number
  gender: 0 | 1
}

const myCatInfo: Record<string, myname> = {
  "user": {
    name: 'miaomiaomiao',
    age: 3,
    gender: 0
  }
}

class xiaomao {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
}

const bbb: string = "我是bbb"

export const mycat = new LocalStorage(myCatInfo)

export const mybbb = AppStorage.setOrCreate<string>("bbb", bbb)

@Entry(mycat)
@Component
struct Page_14yinyong {
  @State message: string = 'Hello World';
  @LocalStorageProp("user")
  user: myname = {
    name: '',
    age: 0,
    gender: 0
  }
  @StorageProp("bbb")
  bbb: string = ""

  build() {
    Column({ space: 20 }) {
      Text(this.bbb)
      Text(this.user.name)
      Text(this.user.age.toString())
      Text(this.user.gender.toString())
      Button("点击测试")
        .onClick(() => {
          const mystorage = new LocalStorage(new xiaomao("小花", 3))

          const maoming = mystorage.get<string>("name")
          const maoming1 = mystorage.link<string>("name")
          const maoming3 = mystorage.prop<string>("name")
          // maoming.set("123")
          maoming1.set("小小花")
          // console.log("mao", JSON.stringify(storage))
          console.log("mao", JSON.stringify(maoming1.get()))
        })
      Button("跳转到页面2")
        .onClick(() => {
          router.pushUrl({
            url: "pages/Page_14yingyong2",
            params: {
              id: 1
            }
          },
            router.RouterMode.Single
          )
        })
    }.height("100%").width("100%")
  }
}