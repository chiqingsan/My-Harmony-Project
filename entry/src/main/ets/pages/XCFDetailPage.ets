import { Food, FoodList } from '../Data/FoodData';
import router from '@ohos.router';

interface myParams {
  id: number
  title: string
}

@Entry
@Component
struct CategoryPage {
  // 渲染食物列表
  @State foods: Food[] = []
  // 标题
  @State title: string = ""

  aboutToAppear(): void {
    // 接收路由传递而来的数据
    if (router.getParams()) {
      const temp = router.getParams() as myParams
      this.title = temp.title
      this.foods = FoodList.filter((item) => {
        return item.categoryId === temp.id.toString()
      })
    }

  }

  onPageShow(): void {
    if (router.getParams()) {
      const temp = router.getParams() as myParams
      this.title = temp.title
      this.foods = FoodList.filter((item) => {
        return item.categoryId === temp.id.toString()
      })
    }
  }

  build() {
    Column() {
      // 顶部
      TopCom({ foods: this.foods, title: this.title })

      // 列表
      List({ space: 20 }) {
        ForEach(this.foods, (food: Food) => {
          ListItem() {
            Row() {
              Image(food.cover)
                .width(150)
                .height(110)
                .borderRadius(10)
              Column() {
                Text(food.title)
                Text() {
                  Span(`评分:${food.score}   `)
                  Span(`${food.count} 人做过`)
                }
                .fontSize(12)

                Row({ space: 10 }) {
                  // 作者头像
                  Image(food.author.avatar)
                    .width(20)
                    .height(20)
                    .borderRadius(10)
                  // 作者昵称
                  Text(food.author.nickname)
                    .fontSize(10)
                    .fontColor(Color.Gray)
                }
              }
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .layoutWeight(1)
              .padding({ top: 5, bottom: 5, left: 10 })
              .height(110)
            }
          }
        })
      }
      .padding(20)
      .layoutWeight(1)
    }
    .height('100%')
  }
}

@Component
struct TopCom {
  @Prop foods: Food[] = []
  @Prop title: string = ""

  build() {
    Stack() {
      // 顶部封面
      Image(this.foods[0].cover)
        .height('100%')
        .width('100%')
      Column() {
        // 返回按钮
        Image($r('app.media.ic_public_arrow_left'))
          .fillColor(Color.White)
          .width(30)
          .onClick(() => {
            router.back()
          })

        // 顶部标题
        Text(this.title)
          .fontColor(Color.White)
          .fontSize(30)
      }
      .justifyContent(FlexAlign.SpaceAround)
      .alignItems(HorizontalAlign.Start)
      .padding(20)
      .backgroundColor('rgba(0,0,0,0.4)')
      .width('100%')
      .height('100%')
    }
    .height(220)
  }
}