@Entry
@Component
struct Index {
  aboutToAppear(): void {
    setInterval(() => {
      this.time = Date.now().toString()
    }, 1000)
  }

  @State time: string = ""

  build() {
    Column() {
      Text(this.time)
    }
  }
}