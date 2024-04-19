Environment.envProp("accessibilityEnabled", 'aaaaaaaa')
Environment.envProp("fontScale", 'bbbb')
Environment.envProp("languageCode", "cccc")
Environment.envProp("colorMode", "ddddd")

@Entry
@Component
struct Index2 {
  @State message: string = 'Hello World';

  aboutToAppear(): void {
    console.log('accessibilityEnabled', AppStorage.get("accessibilityEnabled"))
    console.log('fontScale', AppStorage.get("fontScale"))
    console.log('languageCode', AppStorage.get("languageCode"))
    console.log('colorMode', AppStorage.get("colorMode"))

  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(AppStorage.get("colorMode") != 0 ? "#fff" : "#111")
      }
      .width('100%')
      .height("100%")
      .backgroundColor(AppStorage.get("colorMode") != 0 ? "#111" : "#fff")
    }
    .height('100%')
  }
}