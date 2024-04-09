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

// console.log(`${add(100)}`);

function jiujiu(num: number) {
  let temp = ""

  const row = (beginning: number) => {

    if (beginning <= num) {
      temp += `${beginning}x${num}=${(beginning) * num}  `
      row(beginning + 1)
    }
  }
  row(1)

  console.log(temp);

  if (num) {
    jiujiu(num - 1)
  }
}


jiujiu(9)


@Entry
@Component
struct Index {
  build() {
    Column() {
    }
  }
}