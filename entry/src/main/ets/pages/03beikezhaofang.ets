interface BKCityContent {
  initial: string
  cityNameList: string[]
}

@Entry
@Component
struct ListPageBK {
  // 设置模态状态
  @State isShow: boolean = false
  // 设置导航条的当前索引
  @State navigationBarIndex: number = 0
  hotCitys: string[] = ['北京', '上海', '广州', '深圳', '天津', '杭州', '南京', '苏州', '成都', '武汉', '重庆', '西安', '香港', '澳门', '台北']
  historyCitys: string[] = ['北京', '上海', '广州', '深圳', '重庆']
  cityContentList: BKCityContent[] = [
    {
      initial: 'A',
      cityNameList: ['阿拉善', '鞍山', '安庆', '安阳', '阿坝', '安顺']
    },
    {
      initial: 'B',
      cityNameList: ['北京', '保定', '包头', '巴彦淖尔', '本溪', '白山']
    },
    {
      initial: 'C',
      cityNameList: ['成都', '重庆', '长春', '长沙', '承德', '沧州']
    },
    {
      initial: 'D',
      cityNameList: ['大连', '东莞', '大同', '丹东', '大庆', '大兴安岭']
    },
    {
      initial: 'E',
      cityNameList: ['鄂尔多斯', '鄂州', '恩施', '额尔古纳市', '二连浩特市', '恩施市']
    },
    {
      initial: 'F',
      cityNameList: ['福州', '佛山', '抚顺', '阜新', '阜阳', '抚州']
    },
    {
      initial: 'G',
      cityNameList: ['广州', '贵阳', '赣州', '桂林', '贵港', '广元']
    },
    {
      initial: 'H',
      cityNameList: ['杭州', '海口', '哈尔滨', '合肥', '呼和浩特', '邯郸']
    },
    {
      initial: 'J',
      cityNameList: ['济南', '晋城', '晋中', '锦州', '吉林', '鸡西']
    },
    {
      initial: 'K',
      cityNameList: ['昆明', '开封', '康定市', '昆山', '康保县', '宽城满族自治县']
    },
    {
      initial: 'L',
      cityNameList: ['兰州', '廊坊', '临汾', '吕梁', '辽阳', '辽源']
    },
    {
      initial: 'M',
      cityNameList: ['牡丹江', '马鞍山', '茂名', '梅州', '绵阳', '眉山']
    },
    {
      initial: 'N',
      cityNameList: ['南京', '宁波', '南昌', '南宁', '南通', '南平']
    },
    {
      initial: 'P',
      cityNameList: ['盘锦', '莆田', '萍乡', '平顶山', '濮阳', '攀枝花']
    },
    {
      initial: 'Q',
      cityNameList: ['青岛', '秦皇岛', '齐齐哈尔', '七台河', '衢州', '泉州']
    },
    {
      initial: 'R',
      cityNameList: ['日照', '日喀则', '饶阳县', '任丘市', '任泽区', '饶河县']
    },
    {
      initial: 'S',
      cityNameList: ['上海', '苏州', '深圳', '沈阳', '石家庄', '朔州']
    },
    {
      initial: 'T',
      cityNameList: ['天津', '太原', '唐山', '通辽', '铁岭', '通化']
    },
    {
      initial: 'W',
      cityNameList: ['无锡', '武汉', '乌海', '乌兰察布', '温州', '芜湖']
    },
    {
      initial: 'X',
      cityNameList: ['厦门', '西安', '西宁', '邢台', '忻州', '兴安盟']
    },
    {
      initial: 'Y',
      cityNameList: ['扬州', '阳泉', '运城', '营口', '延边', '伊春']
    },
    {
      initial: 'Z',
      cityNameList: ['郑州', '珠海', '张家口', '镇江', '舟山', '漳州']
    }
  ]
  alphabets: string[] = ['#', '热', "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "W", "X", "Y", "Z"]
  // 实例化列表滚动条控制器
  private listController: ListScroller = new ListScroller()

  build() {
    Column() {
      Button('显示城市选择')
        .bindContentCover($$this.isShow, this.ContentCoverBuilder())
        .onClick(() => {
          this.isShow = true
        })


    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f8f8f8')
  }

  @Builder
  ContentCoverBuilder() {
    Stack({ alignContent: Alignment.End }) {
      Column() {
        // 顶部
        this.TopBuilder();
        // 列表
        this.ListBuilder();
      }
      .backgroundColor(Color.White)

      // 导航 写这里
      this.AlphabetBuilder()
    }
  }

  @Builder
  AlphabetBuilder() {
    AlphabetIndexer({ arrayValue: this.alphabets, selected: this.navigationBarIndex })
      .onSelect((index) => {
        this.listController.scrollToIndex(index)

      })
    // Text()
    //   .width(20)
    //   .height(400)
    //   .backgroundColor(Color.Orange)
  }

  @Builder
  ListBuilder() {
    List({ space: 30, scroller: this.listController }) {
      // 历史
      this.LocationListItemBuilder()
      // 热门
      this.HotListItemBuilder()

      // A-B的区域
      this.LetterListItemBuilder()
    }
    .divider({ startMargin: 20, endMargin: 20, color: '#f3f3f3', strokeWidth: 2 })
    .width('100%')
    .layoutWeight(1)
    .sticky(StickyStyle.Header)
    .onScrollIndex((start: number) => {
      this.navigationBarIndex = start
    })
    .scrollBar(BarState.Off)

  }

  @Builder
  LetterListItemBuilder() {
    // A-B的区域

    ForEach(
      this.cityContentList,
      (item: BKCityContent) => {

        ListItemGroup({ header: this.ListItemGroupHeaderBuilder(item.initial) }) {

          ForEach(
            item.cityNameList,
            (item_a: string) => {
              ListItem() {
                Text(item_a)
                  .width('100%')
                  .padding({ left: 20 })
              }
              .width('100%')
              .height(50)
              .backgroundColor(Color.White)

            }
          )
        }
        .padding({ bottom: 20 })
        .divider({ startMargin: 20, endMargin: 20, color: '#f3f3f3', strokeWidth: 2 })
      }
    )
  }

  @Builder
  ListItemGroupHeaderBuilder(title: string) {
    Text(title)
      .padding({ left: 20, bottom: 15, top: 20 })
      .fontSize(14)
      .fontColor(Color.Gray)
      .backgroundColor('#f8f8f8')
      .width('100%')
  }

  @Builder
  HotListItemBuilder() {
    // 热门
    ListItem() {
      Column({ space: 10 }) {
        Text('热门城市')
          .alignSelf(ItemAlign.Start)
          .fontColor(Color.Gray)
          .fontSize(14)
        Flex({ wrap: FlexWrap.Wrap }) {
          ForEach(
            this.hotCitys,
            (item: string) => {
              Text(item)
                .height(25)
                .backgroundColor(Color.White)
                .width('25%')
                .margin({ bottom: 10 })
            }
          )
        }
        .padding({ left: 20, right: 20 })
      }
      .width('100%')
      .padding({ left: 20, right: 20, bottom: 10 })
    }
  }

  @Builder
  LocationListItemBuilder() {
    ListItem() {
      Column({ space: 15 }) {
        // 定位地址
        Row() {
          Text('北京')
          Text() {
            ImageSpan($r('app.media.ic_public_location_fill_blue'))
              .width(20)
            Span('开启定位')
          }
        }
        .width('100%')
        .padding({ top: 10, bottom: 10, right: 20, left: 20 })
        .justifyContent(FlexAlign.SpaceBetween)
        .backgroundColor(Color.White)

        // 历史
        Column({ space: 10 }) {
          Text('历史')
            .fontColor(Color.Gray)
            .alignSelf(ItemAlign.Start)
            .fontSize(14)
          Flex({ wrap: FlexWrap.Wrap }) {
            ForEach(
              this.historyCitys,
              (item: string) => {

                Text(item)
                  .height(25)
                  .backgroundColor(Color.White)
                  .width('25%')
                  .margin({ bottom: 10 })
              })
          }
          .padding({ left: 20, right: 20 })
        }
        .width('100%')
        .padding({ left: 20, right: 20 })
      }
    }
    .padding({ top: 20 })
  }

  @Builder
  TopBuilder() {
    Column() {
      // X + 输入框
      Row({ space: 20 }) {
        Image($r('app.media.ic_public_cancel'))
          .width(30)
          .fillColor(Color.Gray)

        Row({ space: 5 }) {
          Image($r('app.media.ic_public_search'))
            .width(18)
          Text('请输入城市名称')
            .layoutWeight(1)
        }
        .height(50)
        .border({ width: .5, color: Color.Gray, radius: 5 })
        .padding({ left: 5 })
        .layoutWeight(1)
        .shadow({
          radius: 20,
          color: '#f6f6f7'
        })
      }
      .padding({
        left: 15,
        right: 15,
        top: 15
      })
      .onClick(() => {
        this.isShow = false
      })

      // 国内城市
      Column() {
        Text('国内城市')
          .fontSize(15)
          .fontWeight(800)
          .padding(5)
        Row()
          .width(20)
          .height(2)
          .backgroundColor('#0094ff')
          .borderRadius(2)
      }

    }
    .width('100%')
    .backgroundColor(Color.White)
    .height(100)
    .border({
      width: { bottom: 4 },
      color: '#f6f6f7',
    })
  }
}


