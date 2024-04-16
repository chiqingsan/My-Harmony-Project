import { http } from '@kit.NetworkKit';


// 定义正则, 对图片请求连接做处理
const myRegular = new RegExp("https://pic.maizuo.com/")

// 封装网络请求
async function myHttpFun(src: string) {

  const httpData = await http.createHttp().request(
    src,
    {
      method: http.RequestMethod.GET
    }
  )

  // 返回请求数据
  return JSON.parse(httpData.result.toString())

}


@Entry
@Component
struct Page_MyMovie {
  // 在页面创建的时候发起网络请求
  async aboutToAppear(): Promise<void> {
    this.movieDate = await myHttpFun("http://chiqingsan.cn/data")
  }

  // 用于接收处理后的返回数据
  @State movieDate: object[] = []
  // 记录当前tabs索引
  @State barindex: number = 0

  // -------------- 主页面 --------------
  build() {
    Column() {

      Tabs() {
        TabContent() {
          List({ space: 5 }) {

            ForEach(
              this.movieDate["films"],
              (item: object) => {
                ListItem() {
                  movieList({ item: item })
                    .height(100)
                }
              }
            )

          }
          .divider({
            strokeWidth: "1px",
            color: "#ccc",
            startMargin: 10,
            endMargin: 10
          })
          .scrollBar(BarState.Off)
        }.tabBar(this.myTabs("正在热映", 0))

        TabContent() {
          Column() {
            Text("当前页面待完成...")
          }
        }.tabBar(this.myTabs("即将上映", 1))
      }
      .barHeight(60)
      .scrollable(false)
      .onTabBarClick((index) => {
        this.barindex = index
      })

    }
  }

  // 自定义tabs样式
  @Builder
  myTabs(str: string, index: number) {
    Text(str)
      .fontSize(18)
      .padding({ bottom: 8 })
      .fontColor(index === this.barindex ? "#FE651F" : "#000")
      .border({
        width: { bottom: 2 },
        color: "#FE651F",
      })

  }
}

// TabContent页面
@Component
struct movieList {
  // 接受传递的item
  @Prop item: object
  // 接受处理后的演员列表
  private listOfActors: string[] = []

  // 页面创建时, 对演员的数据进行处理
  aboutToAppear(): void {
    this.item['actors'].forEach((item: object) => {
      this.listOfActors.push(item["name"])
    })
  }

  build() {
    Row() {
      // 正则替换图片地址
      // https://static.maizuo.com/pc/v5/
      // "https://pic.maizuo.com/usr/movie/57116f984c95f7e0abe768550bd78ef9.jpg"
      Image(`${this.item["poster"]}`.replace(myRegular, "https://static.maizuo.com/pc/v5/"))
        .height("90%")
        .margin(10)
        .borderRadius(3)
      Column({ space: 2 }) {
        // 电影名字
        Row({ space: 5 }) {
          Text(this.item["name"])
            .myTextStyle(16, 600, "#272929")
          Text(this.item["filmType"]["name"])
            .myTextStyle(12, 400, "#F8F7F4")
            .padding({ left: 3, right: 3, top: 1, bottom: 1 })
            .backgroundColor("#D2DFEB")
            .borderRadius(3)
        }

        // 电影评分
        Row({ space: 3 }) {
          Text("观众评分")
            .myTextStyle(14, 400, "#8a8a8a")
          Text(this.item["grade"])
            .myTextStyle(14, 500, "#FFB232")
        }

        // 主演名单
        Row({ space: 3 }) {
          Text(`主演: ${this.listOfActors.join(" ")}`)
            .myTextStyle(14, 400, "#8a8a8a")
            .layoutWeight(1)
            .textOverflow({
              overflow: TextOverflow.Ellipsis
            })
            .maxLines(1)

        }

        // 影片来源
        Row() {
          Text(`${this.item["nation"]} | ${this.item["runtime"]}分钟`)
            .myTextStyle(14, 400, "#8a8a8a")
        }
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Column() {
        Button("购票")
          .height(24)
          .backgroundColor("#00000000")
          .fontColor("#FF5F16")
          .fontSize(12)
          .fontWeight(400)
          .type(ButtonType.Normal)
          .padding({ left: 10, right: 10, top: 3, bottom: 3 })
          .margin(12)
          .border({
            width: "1",
            color: "#FFD7C4",
            radius: 3
          })
      }
    }.width("100%")
  }
}


@Extend(Text)
function myTextStyle(size: number = 16, wei: number = 400, color: string = "#000") {
  .fontSize(size)
  .fontWeight(wei)
  .fontColor(color)
}
