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
    myHttp('https://zhoushugang.gitee.io/fe2022/takeaway.json')
      .then((resolve) => {
        const Data: object[] = JSON.parse(resolve.result.toString())
        this.b = Data
        console.log(JSON.stringify(this.b))
      })
      .catch((err: Error) => {
        console.error('catch', err.message)
      })
  }

  build() {
    Column() {
      ForEach(this.b, (item: object) => {
        Column() {
          Row() {
            Text(item["name"])
          }

          ForEach(
            item["foods"],
            (food: string) => {
              Text(food["name"])
            }
          )
        }
      })
    }

  }
}