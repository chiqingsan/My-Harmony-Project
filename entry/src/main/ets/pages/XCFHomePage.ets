import { Category, CategoryContainer } from '../Data/CategoryData'
import router from '@ohos.router'


@Entry
@Component
struct XCFDemo {
  @State list: CategoryContainer[] = CategoryContainer.getCategoryContainerList()

  build() {
    Column() {
      // 顶部
      TopCom()
      // 内容
      ContentCom()
        .layoutWeight(1)

      // 底部
      BottomCom()

    }
    .width('100%')
    .height('100%')
  }
}

// 顶部组件：图片代替
@Component
struct TopCom {
  build() {
    Image($r('app.media.ic_public_XCF_TOP'))
      .width('100%')
  }
}

// 内容组件：渲染列表
@Component
struct ContentCom {
  build() {
    Scroll() {
      Column({ space: 30 }) {
        ForEach(CategoryContainer.getCategoryContainerList(), (item: CategoryContainer) => {
          Column({ space: 15 }) {
            Text(item.title)
              .fontSize(20)
              .alignSelf(ItemAlign.Start)
              .fontWeight(FontWeight.Medium)
            Grid() {
              ForEach(item.categorizes, (cateItem: Category) => {
                GridItem() {
                  Stack({ alignContent: Alignment.Bottom }) {
                    Image(cateItem.cover)
                      .onClick(() => {
                        router.pushUrl({
                          url: "pages/XCFDetailPage",
                          params: {
                            title: cateItem.title,
                            id: cateItem.id
                          }
                        })
                      })
                    Text(cateItem.title)
                      .fontColor(Color.White)
                      .fontSize(14)
                      .padding({ bottom: 10 })
                  }
                  .borderRadius(10)
                  .clip(true)

                }
              })
            }
            .columnsTemplate('1fr 1fr 1fr')
            .columnsGap(10)
            .rowsGap(10)
          }
          .height(240)
        })
      }
      .padding(20)
    }
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring)

  }
}

// 底部组件：图片代替
@Component
struct BottomCom {
  build() {
    Image($r('app.media.ic_public_XCF_Bottom'))
      .width('100%')

  }
}