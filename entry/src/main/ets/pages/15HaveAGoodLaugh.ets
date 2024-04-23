/**
 * 1. 默认加载
 * 2. 下拉刷新
 * 3. 触底加载更多
 * 4. 点击返回顶部
 * */
import { http } from '@kit.NetworkKit'
import { skeletonScreen } from './skeletonScreen'

async function myhttp(num: number) {
  const res = await http.createHttp()
    .request(`https://api-vue-base.itheima.net/api/joke/list?num=${num}`, { expectDataType: http.HttpDataType.STRING })
  return JSON.parse(res.result as string)["data"] as string[]
}

@Entry
@Component
struct Day01_07_Jokes {
  @State jokes: string [] = []
  // 记录当前下啦刷新显示状态
  @State refreshing: boolean = false
  // 记录搜索框的显示
  @State searchisshow: boolean = false
  // 记录搜索框的内容
  @State searchvalue: string = ""
  // 滚动条控制器
  listScroller: Scroller = new Scroller()
  // 节流阀 false表示无任务 , true表示正在请求数据
  isloading: boolean = false

  async aboutToAppear(): Promise<void> {
    this.jokes = await myhttp(10)
  }

  build() {
    Refresh({ refreshing: $$this.refreshing }) {
      Column() {
        // 顶部
        this.HeaderBuilder()

        if (this.jokes.length === 0) {
          Column({ space: 10 }) {
            // 骨架屏
            ForEach(Array.from({ length: 6 }),
              () => {
                skeleton()
              })
          }
          .padding(10)
          .layoutWeight(1)
        } else {
          // 笑话列表
          List({ space: 10, scroller: this.listScroller }) {
            ForEach(
              (this.searchvalue === "" ? this.jokes : this.jokes.filter(item => item.includes(this.searchvalue))),
              (joke: string) => {
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
            if (!this.isloading) {
              this.isloading = true
              this.jokes.push(...await myhttp(10))
              this.isloading = false
            }
          })
        }

      }
      .width('100%')
      .height('100%')
      .backgroundColor('#f6f6f6')

    }
    .onRefreshing(async () => {
      // myhttp(10)
      //   .then((res) => {
      //     this.jokes = res
      //     this.refreshing = false
      //   })
      const res = await myhttp(10)
      this.jokes = res
      this.refreshing = false
    })
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(25);

      if (this.searchisshow) {
        Search({
          placeholder: "输入文字进行筛选"
        })
          .placeholderFont({
            size: 14
          })
          .searchButton('搜索')
          .width("80%")
          .height(35)
          .transition({
            type: TransitionType.All,
            translate: {
              y: "-100%"
            },
            opacity: 1
          })
          .onSubmit((val) => {
            console.log("sub", val)
            this.searchvalue = val
            animateTo({
              duration: 1000,
              curve: Curve.Smooth
            }, () => {
              this.searchisshow = false
            })
          })
      } else {
        Image($r('app.media.ic_public_joke_logo'))
          .width(30)
          .onClick(() => {
            this.listScroller.scrollEdge(Edge.Top)
          })
          .transition({
            type: TransitionType.All,
            translate: {
              x: -250
            }
          })

        Image($r('app.media.ic_public_search'))
          .width(30)
          .transition({
            type: TransitionType.All,
            translate: {
              x: 100
            }
          })
          .onClick(() => {
            animateTo({
              duration: 1000,
              curve: Curve.Smooth
            }, () => {
              this.searchisshow = true
            })
          })
      }
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
struct skeleton {
  build() {

    Row() {
      Column({ space: 10 }) {
        skeletonScreen({ length: 250 })
        Row({ space: 15 }) {
          skeletonScreen({ length: 50, myhei: 14 })
          skeletonScreen({ length: 40, myhei: 14 })
          skeletonScreen({ length: 40, myhei: 14 })
        }

        skeletonScreen({ length: "95%" })
        skeletonScreen({ length: 180 })
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
      .padding(20)
    }
    .borderRadius(10)
    .backgroundColor(Color.White)
    .shadow({ radius: 2, color: Color.Gray })

  }
}