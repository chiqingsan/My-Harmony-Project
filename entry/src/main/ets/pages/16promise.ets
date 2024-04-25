console.log("1. 代码开始执行~")
const myPromise = new Promise<string>((resolve, reject) => {
  console.log("2. 发现异步代码, 放入宿主环境等待执行")
  setTimeout(() => {
    console.log("4. 异步代码拿到结果")
    resolve("完成")
  }, 0)
})
console.log("3. 同步代码执行完毕, 开始准备执行异步代码")

myPromise.then((res) => {
  console.log(`5. 异步代码执行完毕, 拿到结果:${res}`)
})

function myfun(num: number): Promise<number> {
  const myPromise_a = new Promise<number>((res) => {
    setTimeout(() => {
      console.log(num.toString())
      res(++num)
    }, 1000)
  })
  return myPromise_a
}

myfun(1)
  .then((num) => {
    return myfun(num)
  })
  .then((num) => {
    return myfun(num)
  })
  .then((num) => {
    return myfun(num)
  })
  .then((num) => {
    return myfun(num)
  })


@Entry
@Component
struct Index {
  build() {

  }
}