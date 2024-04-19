import router from '@ohos.router';
import { mycat, myname } from "./Page_14yingyong"

interface FoodInfo {
  name: string
  price: number
}

PersistentStorage.persistProp<FoodInfo[]>('foods', [
  { name: '西兰花炒蛋', price: 10 },
  { name: '猪脚饭', price: 15 },
  { name: '剁椒鱼头', price: 14 },
])

PersistentStorage.persistProp("mycjh", "我是测试信息噢~持久化一下")

@Entry(mycat)
@Component
struct Page_yinyong2 {
  @State message: string = 'Hello World';
  @LocalStorageLink("user")
  user: myname = {
    name: "",
    age: 0,
    gender: 0
  }
  @StorageLink("bbb")
  bbb: string = ""
  @StorageLink("mycjh")
  mycjh: string = ""
  @StorageLink("foods")
  foods: FoodInfo[] = []

  build() {
    Column({ space: 20 }) {
      Text(this.user.name)
      Text(this.user.age.toString())
        .onClick(() => {
          this.user.age++
        })
      Text(this.user.gender.toString())
      Text(this.bbb)
        .onClick(() => {
          this.bbb += Math.random()
        })
      Text(JSON.stringify(this.foods))
      Button("点击测试")
        .onClick(() => {
          this.foods[0].name = "test"
          this.foods[0] = JSON.parse(JSON.stringify(this.foods[0]))
        })
      Button("跳转到页面1")
        .onClick(() => {
          router.back()
        })
      Button("跳转到页面3")
        .onClick(() => {
          router.pushUrl({
            url: "pages/Page_14yingyong3"
          })
        })
    }.height("100%").width("100%")
  }
}