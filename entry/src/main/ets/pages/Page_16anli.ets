import http from '@ohos.net.http';

interface TopCategoryResponse {
  message: string
  data: CategoryData[]
}

interface CategoryResponse {
  message: string
  data: CategoryData
}

interface CategoryData {
  id: string
  name: string
  picture: string
  children?: CategoryData[]
}

interface obj {
  id: string
}

function myrequest(url: String, body?: string | object) {
  return http.createHttp().request(
    "https://hmajax.itheima.net/api/category/" + url,
    {
      extraData: body,
      expectDataType: http.HttpDataType.OBJECT
    }
  )
}


@Entry
@Component
struct Day03_08_GetAllCategory {
  build() {
    Column() {
      // 头部-
      this.headerBuilder()
      // 内容
      Tabs({ barPosition: BarPosition.Start }) {
        TabContent() {
          mainContent()
        }
        .backgroundColor('#f6f6f6')
        .tabBar('首页')

        this.tabItemBuilder('小米自营')
        this.tabItemBuilder('手机数码')
        this.tabItemBuilder('小米电视')
        this.tabItemBuilder('电脑办公')
        this.tabItemBuilder('大家电')
        this.tabItemBuilder('小家电')
        this.tabItemBuilder('美食酒饮')
        this.tabItemBuilder('家居家装')
        this.tabItemBuilder('日常元素')
        this.tabItemBuilder('服装配饰')
        this.tabItemBuilder('有品海购')
        this.tabItemBuilder('手表首饰')
        this.tabItemBuilder('出行车品')
        this.tabItemBuilder('美妆个护')


      }
      .vertical(true)
      .barWidth(100)
      .barHeight('100%')
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  headerBuilder() {
    // 头部-
    Stack({ alignContent: Alignment.End }) {
      Text('分类')
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontSize(20);
      // Image($r('app.media.ic_public_search'))
      //   .width(25);
    }
    .backgroundColor(Color.White)
    .padding(15)

  }

  @Builder
  tabItemBuilder(title: string) {
    TabContent() {
      Text(title + '的内容')
        .fontSize(30)
    }
    .backgroundColor('#f6f6f6')
    .tabBar(title)
  }
}

@Component
struct mainContent {
  @State topCategoryList: CategoryData[] = [
    {
      "id": "1005000",
      "name": "居家",
      "picture": "http://yjy-xiaotuxian-dev.oss-cn-beijing.aliyuncs.com/picture/2021-05-06/201516e3-25d0-48f5-bcee-7f0cafb14176.png",
      "children": [
        {
          "id": "1005009",
          "name": "茶咖酒具",
          "picture": "https://yanxuan.nosdn.127.net/3102b963e7a3c74b9d2ae90e4380da65.png?quality=95&imageView"
        },
        {
          "id": "1007000",
          "name": "水具杯壶",
          "picture": "https://yanxuan.nosdn.127.net/45b50d5f8afbd6fdef97314647dcb7db.png?quality=95&imageView"
        },
        {
          "id": "1017000",
          "name": "宠物食品",
          "picture": "https://yanxuan.nosdn.127.net/b42a85ef15f856081ea9f49e5f6893e2.png?quality=95&imageView"
        },
        {
          "id": "109248004",
          "name": "宠物用品",
          "picture": "https://yanxuan.nosdn.127.net/e766b09029ca00680d1e651b5cdc42bd.png?quality=95&imageView"
        }
      ]
    },
  ]
  @State isLoading: boolean = false
  req = http.createHttp()

  async aboutToAppear(): Promise<void> {
    const res = await myrequest("top")
    this.topCategoryList = res.result["data"] as CategoryData[]

    /*
        // 第一种写法, 分别发送请求
        this.topCategoryList.forEach((item, index) => {
          myrequest("sub", { id: item.id } as obj)
            .then((res) => {
              this.topCategoryList[index] = res.result["data"]
              console.log("res:", JSON.stringify(res.result["data"]))
            })
        })
    */
    /*
        // 第二种写法, 使用Promise.all方法, 同时发送请求
        const promises = this.topCategoryList.map((item): Promise<http.HttpResponse> => {
          return myrequest("sub", { id: item.id } as obj)
        })
        const outcome = await Promise.all(promises)
        this.topCategoryList = outcome.map((item) => {
          return item.result["data"] as CategoryData
        })
        console.log("promises", JSON.stringify(outcome))
    */

    // 第三种写法, 使用for await 同时发送请求
    const promises = this.topCategoryList.map((item): Promise<http.HttpResponse> => {
      return myrequest("sub", { id: item.id } as obj)
    })
    let i = 0
    for await (let outcome of promises) {
      this.topCategoryList[i] = outcome.result["data"]
      i++
    }

  }

  build() {
    Scroll() {
      if (this.isLoading) {
        LoadingProgress()
          .width(150)
          .color('#ccc')
      } else {
        Column() {
          Image($r('app.media.banner_01_3'))
            .width('100%')
            .borderRadius(12)
          List() {
            ForEach(this.topCategoryList, (item: CategoryData) => {
              ListItemGroup({ header: this.groupHeader(item.name, item.picture) }) {
                ForEach(item.children, (it: CategoryData) => {
                  ListItem() {
                    Column() {
                      Image(it.picture)// .width('80%')
                        .height(90)
                      Text(it.name)
                        .fontSize(15)
                    }
                    .width('100%')
                    .alignItems(HorizontalAlign.Center)
                  }

                })
              }
              .backgroundImagePosition({ x: '0', y: 0 })
            })
          }
          .backgroundColor(Color.White)
          .lanes(2)
          .divider({ strokeWidth: 10, color: '#f6f6f6' })
          .padding({ bottom: 100 })
        }
        .justifyContent(FlexAlign.Start)
      }

    }
    .height('100%')
    .padding(10)
  }

  @Builder
  groupHeader(title: string, icon: string) {
    Row({ space: 5 }) {
      Text(title)
        .fontWeight(FontWeight.Bold)
      Image(icon)
        .width(20)
    }
    .width('100%')
    .padding(10)
    .backgroundColor(Color.White)
  }
}

