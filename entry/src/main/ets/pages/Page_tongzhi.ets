import notificationManager from '@ohos.notificationManager';

function myMessage(title: string, str: string) {
  let request: notificationManager.NotificationRequest = {
    id: 123,
    content: {
      notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
      normal: {
        title: title,
        text: str,
        additionalText: "这个是附加消息"
      }
    }
  }

  return request
}

@Entry
@Component
struct Page_tongzhi {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Button("发送通知")
          .onClick(() => {
            console.log("message", JSON.stringify(myMessage("标题", "内容")))
            notificationManager.publish(myMessage("标题", "这个是我的通知哦"))
              .then(() => {
                console.log("message: 发送成功")
              })
              .catch((abc: Error) => {
                console.log("message", JSON.stringify(abc))
                console.log("message: 发送失败")
              })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}