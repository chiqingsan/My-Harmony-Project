import { router } from '@kit.ArkUI'
import { storageUserInfo } from "./LoginPage"
import picker from '@ohos.file.picker';

// 一、定义图片选择 Picker 的配置
// 实例化 选项对象
const photoSelectOptions = new picker.PhotoSelectOptions();
// 过滤选择媒体文件类型为IMAGE
photoSelectOptions.MIMEType = picker.PhotoViewMIMETypes.IMAGE_TYPE;
// 选择媒体文件的最大数目
photoSelectOptions.maxSelectNumber = 1;


// 二、创建 图片选择对象并选择图片
const photoViewPicker = new picker.PhotoViewPicker();


interface Tool {
  icon: ResourceStr
  name: string
  value?: string
  onClick?: () => void
}

export interface myuserInfo {
  name: string
  icon: ResourceStr
  account: string
  landingTime: string
}


@Entry(storageUserInfo)
@Component
export struct MyCenterPage {
  @LocalStorageLink("icon")
  icon: ResourceStr = ""
  @LocalStorageLink("name")
  name: string = ""
  @LocalStorageLink("account")
  account: string = ""
  @LocalStorageLink("landingTime")
  landingTime: string = ""

  @Builder
  toolsBuilder(tool: Tool) {
    Row() {
      Image(tool.icon)
        .width(16)
        .aspectRatio(1)
        .margin({ right: 12 })
      Text(tool.name)
        .fontSize(14)
      // Blank()
      if (tool.value) {
        Text(tool.value)
          .fontSize(14)
          .fontColor('#979797')
      }
    }
    .height(50)
    .width('100%')
    .padding({ left: 16, right: 10 })
    .onClick(() => {
      tool.onClick && tool.onClick()
    })
  }

  build() {
    Column({ space: 16 }) {
      Row({ space: 12 }) {
        Image(this.icon)
          .width(55)
          .aspectRatio(1)
          .borderRadius(55)
          .onClick(() => {
            // 调用 select 方法，传入选项对象
            photoViewPicker.select(photoSelectOptions).then(res => {
              const uri = res.photoUris[0]
              // 因为只选了一张
              // AlertDialog.show({ message: '图片路径为:' + uri })
            })
          })
        Column({ space: 4 }) {
          Text(this.name)
            .fontSize(18)
            .fontWeight(600)
            .width('100%')
            .margin({ bottom: 5 })

          Text('编辑个人信息')
            .fontColor('#979797')
            .fontSize(11)
            .margin({ right: 4 })
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)

      }
      .width('100%')
      .height(100)
      .margin({ top: 50 })


      Column() {

        this.toolsBuilder({
          icon: $r('app.media.ic_mine_ai'),
          name: '登录账号:',
          value: this.account ? this.account : 'undefined'
        })
        this.toolsBuilder({
          icon: $r('app.media.ic_mine_collect'),
          name: '登录时间:',
          value: this.landingTime ? this.landingTime : 'undefined'
        })
        this.toolsBuilder({
          icon: $r('app.media.ic_mine_setting'), name: '登出', onClick: () => {
            router.pushUrl({
              url: 'pages/LoginPage'
            },
              router.RouterMode.Single
            )
          }
        })
      }
      .backgroundColor(Color.White)
      .borderRadius(8)
    }
    .padding(16)
    .backgroundColor('#f3f4f5')
    .linearGradient({
      colors: [['#FFB071', 0], ['#f3f4f5', 0.3], ['#f3f4f5', 1]]
    })
    .width('100%')
    .height('100%')
  }
}