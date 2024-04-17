import notificationManager from '@ohos.notificationManager'

@Entry
@Component
struct Index {
  notifyId = 100

  build() {
    Column({ space: 15 }) {
      Button('添加通知')
        .onClick(async () => {
          const request: notificationManager.NotificationRequest = {
            id: this.notifyId,
            content: {
              // contentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
              notificationContentType:notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
              normal: {
                title: "温馨提示",
                text: "您的京东快递 100321120341233 快递已经达到北京！",
                additionalText: "物流提醒"
              }
            },
          }
          notificationManager.publish(request)
        })
      Button('取消通知')
        .onClick(() => {
          notificationManager.cancel(this.notifyId)
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}