import { http } from '@kit.NetworkKit'

function myHttp(src: string) {
  const request = http.createHttp()
  return request.request(
    src,
    {
      method: http.RequestMethod.GET
    }
  )
}


@Entry
@Component
struct a {
  @State b: object[] = []
  @State c: number = 0

  aboutToAppear(): void {
    myHttp('http://192.168.67.19:3000/foods')
      .then((resolve) => {
        this.b = JSON.parse(resolve.result as string)
        console.log(JSON.stringify(this.b))
      })
      .catch((err: Error) => {
        console.error('catch', err.message)
      })
  }

  build() {
    Column() {

      Text(JSON.stringify(this.b))
    }

  }
}