/**
 * 1. 默认加载
 * 2. 下拉刷新
 * 3. 触底加载更多
 * 4. 点击返回顶部
 * */
import { http } from '@kit.NetworkKit'

async function myhttp(num: number) {
  const res = await http.createHttp()
    .request(`https://api-vue-base.itheima.net/api/joke/list?num=${num}`, { expectDataType: http.HttpDataType.STRING })
  return JSON.parse(res.result as string)["data"] as string[]
}

@Entry
@Component
struct Day01_07_Jokes {
  @State jokes: string [] = ['笑话']
  jokeNum: number = 5
  @State refreshing: boolean = false
  listScroller: Scroller = new Scroller()

  async aboutToAppear(): Promise<void> {
    this.jokes = await myhttp(10)
  }

  build() {
    Refresh({ refreshing: $$this.refreshing }) {
      Column() {
        // 顶部
        this.HeaderBuilder()
        // 笑话列表
        List({ space: 10, scroller: this.listScroller }) {
          ForEach(this.jokes, (joke: string) => {
            ListItem() {
              Column({ space: 10 }) {
                Text(joke.split("，")[0])
                  .fontSize(20)
                  .fontWeight(600)
                Row({ space: 15 }) {
                  titleIcon({ icon: $r('app.media.ic_public_time'), info: '2024-1-1' })
                  titleIcon({ icon: $r('app.media.ic_public_read'), info: '阅读(6666)' })
                  titleIcon({ icon: $r('app.media.ic_public_comments'), info: '评论(123)' })
                }

                Text(joke)
                  .fontSize(15)
                  .fontColor(Color.Gray)
              }
              .width('100%')
              .alignItems(HorizontalAlign.Start)
              .padding(20)

            }
            .borderRadius(10)
            .backgroundColor(Color.White)
            .shadow({ radius: 2, color: Color.Gray })
          })

        }
        .padding(10)
        .layoutWeight(1)
        .onReachEnd(async () => {
          this.jokes.push(...await myhttp(10))
        })

      }
      .width('100%')
      .height('100%')
      .backgroundColor('#f6f6f6')
    }
    .onRefreshing(() => {
      myhttp(10)
        .then((res) => {
          this.jokes = res
          this.refreshing = false
        })
    })
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(25);

      Image($r('app.media.ic_public_joke_logo'))
        .width(30)
        .onClick(() => {
          this.listScroller.scrollEdge(Edge.Top)
        })

      Image($r('app.media.ic_public_search'))
        .width(30);
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .height(60)
    .padding(10)
    .border({ width: { bottom: 2 }, color: '#f0f0f0' })
    .backgroundColor(Color.White)
  }
}

@Component
struct titleIcon {
  icon: ResourceStr = ''
  info: string = ''

  build() {
    Row() {
      Image(this.icon)
        .width(15)
        .fillColor(Color.Gray)
      Text(this.info)
        .fontSize(14)
        .fontColor(Color.Gray)
    }
  }
}

@Component
struct skeletonScreen {
  @Prop length: number = 100

  build() {
    Stack() {
      Text()
        .width(this.length)
      Text()
    }
  }
}