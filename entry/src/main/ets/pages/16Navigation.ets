function generateRandomText(): string {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  const length = Math.floor(Math.random() * (40 - 20 + 1)) + 20;
  let result = '';

  for (let i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * characters.length));
  }

  return result;
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      Navigation() {
        Scroll() {
          Column({ space: 10 }) {
            ForEach(
              Array.from({ length: 50 }),
              () => {
                Row() {
                  Text(generateRandomText())
                    .width("95%")
                    .textOverflow({
                      overflow: TextOverflow.Ellipsis
                    })
                    .maxLines(1)
                    .padding(3)
                }
              }
            )
          }
        }
        .scrollBar(BarState.Off)
      }
      .title("这个是标题")
      .titleMode(NavigationTitleMode.Free)
      .backButtonIcon($r("app.media.ic_01_1"))
    }
  }
}