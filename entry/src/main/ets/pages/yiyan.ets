import { http } from '@kit.NetworkKit';

interface yiyan {
  id: number;
  uuid: string;
  hitokoto: string;
  type: string;
  from: string;
  from_who: string;
  creator: string;
  creator_uid: number;
  reviewer: number;
  commit_from: string;
  created_at: string;
  length: number;
}

async function myhttpget(url: string) {
  const createHttp = http.createHttp()
  const res = await createHttp.request(url)
  return res.result.toString()
}

@Entry
@Component
struct Yiyan {
  @State message: yiyan | null = null;

  aboutToAppear(): void {
    myhttpget("https://v1.hitokoto.cn/")
      .then(res => {
        this.message = JSON.parse(res) as yiyan
      })
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Column({ space: 20 }) {
          Text(this.message?.hitokoto || "还没有数据噢~")
            .width("80%")
            .fontSize(26)
            .fontWeight(FontWeight.Bold)
          Text(`--- ${this.message?.from}`)
            .alignSelf(ItemAlign.End)
        }

        Row() {
        }

        Button("换一句")
          .width(120)
          .height(35)
          .backgroundColor("#00000000")
          .fontColor("#222")
          .fontWeight(400)
          .border({
            width: 1,
          })
          .onClick(() => {
            myhttpget("https://v1.hitokoto.cn/")
              .then(res => {
                this.message = JSON.parse(res) as yiyan
              })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}