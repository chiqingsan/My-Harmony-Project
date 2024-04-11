function randomNum(num: number) {
  let arr: number[] = Array.from({ length: num })
  arr.forEach((num, index) => {
    arr[index] = Math.floor(Math.random() * 100)
  })
  return arr
}

const myArr: number[] = randomNum(100)

console.log(`${myArr}`);
myArr.sort((a, b) => {
  return a - b
})
console.log(`${myArr}`);


@Entry
@Component
struct Index {
  build() {

  }
}