// 完成递归函数, 完成对输入的数递归相加到0的要求
function add(params: number) {
  let sum: number = 0
  if (params) {
    let temp = add(params - 1)
    console.log(`sum = ${params} + ${temp}`)
    sum = params + temp
  }
  return sum
}

console.log(`${add(100)}`);


@Entry
@Component
struct Index {
  build() {
    Column() {
    }
  }
}