@Entry
@Component
struct Index {
  @State currentValue: number | string = 0
  // 定义一个用来保存数据的空数组
  @State formula: string = ""
  @State oldNumbers: number | string = ""
  private operator: string = ""
  private level2CalculationResults: number = 0

  build() {
    Column() {

      // 顶部栏
      Row() {
        Text("标准计算器")
        Text("历史")
      }
      .width("100%")
      .padding({ left: 30, right: 20 })
      .justifyContent(FlexAlign.SpaceBetween)
      .height(100)

      // 结果显示区
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End, justifyContent: FlexAlign.SpaceAround }) {
        Text(`${this.formula}`)
        Text(`${this.currentValue}`)
          .fontSize(50)
          .fontWeight(700)
      }
      .width("100%")
      .height(120)

      // 输入区

      Grid() {
        GridItem() {
          Text("%")
        }.onClick(() => {
          this.currentValue = Number(this.currentValue) / 100
        })

        GridItem() {
          Text("CE")
        }.onClick(() => {
          this.currentValue = 0
          this.formula = ""
          this.oldNumbers = ""
          this.operator = ""
        })

        GridItem() {
          Text("C")
        }.onClick(() => {
          this.currentValue = 1
        })

        GridItem() {
          Text("←")
        }.onClick(() => {
          this.currentValue = 1
        })

        GridItem() {
          Text("7")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}7`)
        })

        GridItem() {
          Text("8")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}8`)

        })

        GridItem() {
          Text("9")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}9`)

        })

        GridItem() {
          Text("*")
        }.onClick(() => {
          this.formula += `${this.currentValue}*`
          this.oldNumbers = this.currentValue
          // this.level2CalculationResults =
          this.operator = "*"
          this.currentValue = ""
        })

        GridItem() {
          Text("4")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}4`)

        })

        GridItem() {
          Text("5")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}5`)

        })

        GridItem() {
          Text("6")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}6`)
        })

        GridItem() {
          Text("-")
        }.onClick(() => {
          this.currentValue = 1
        })

        GridItem() {
          Text("1")
        }
        .onClick(() => {
          this.currentValue = Number(`${this.currentValue}1`)
        })

        GridItem() {
          Text("2")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}2`)
        })

        GridItem() {
          Text("3")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}3`)
        })

        GridItem() {
          Text("+")
        }.onClick(() => {
          this.currentValue = 1
        })

        GridItem() {
          Text("+/-")
        }.onClick(() => {
          this.currentValue = 1
        })

        GridItem() {
          Text("0")
        }.onClick(() => {
          this.currentValue = Number(`${this.currentValue}0`)
        })

        GridItem() {
          Text(".")
        }.onClick(() => {
          this.currentValue = `${this.currentValue}.`
        })

        GridItem() {
          Text("=")
        }.onClick(() => {

          let temp = this.formula + this.currentValue.toString()
          // console.log(`${this.formula}`)
          // // temp = eval("1+1+1+1+1")
          let fn = new Function("return a")
          console.log(`${temp}`)
          this.currentValue = calculate(temp)


          // console.log(`${aaa()}`)
          // switch (this.operator) {
          //   case "*":
          //     this.currentValue = Number(this.currentValue) * Number(this.oldNumbers)
          //     break;
          //
          //   default:
          //     break;
          // }
        })

      }
      .height(400)
      .rowsTemplate("1fr 1fr 1fr 1fr 1fr")
      .columnsTemplate("1fr 1fr 1fr 1fr")
    }
  }
}


// const fn = new Function(`return ${100}${'*'}${200}`)
function aaa() {
  return 100 * 200
}


interface keyNum {
  '+': number
  '-': number
  '*': number
  '/': number
}


// 将字符串算式转换成逆波兰表达式
interface OperatorPrecedence {
  '+': number
  '-': number
  '*': number
  '/': number
};

function toRPN(expression: string): (number | string)[] {
  const precedence: OperatorPrecedence = {
    '+': 1,
    '-': 1,
    '*': 2,
    '/': 2
  };

  const isOperator = (token: string): boolean => Object.keys(precedence).includes(token);

  const outputQueue: (number | string)[] = [];
  const operatorStack: string[] = [];

  expression.split(/\s+/).forEach(token => {
    if (isOperator(token)) {
      for (let i = operatorStack.length - 1; i >= 0; i--) {
        const topOperator = operatorStack[i];
        // if (precedence[topOperator] >= precedence[token]) {
        //   outputQueue.push(operatorStack.pop()!);
        // } else {
        //   break;
        // }
      }
      operatorStack.push(token);
    } else {
      const parsedToken = parseFloat(token);
      if (!isNaN(parsedToken)) {
        outputQueue.push(parsedToken);
      } else {
        throw new Error('Invalid token: ' + token);
      }
    }
  });

  outputQueue.push(...operatorStack.reverse());

  return outputQueue;
}


// 计算逆波兰表达式的结果
function evaluateRPN(rpn: (number | string)[]): number {
  let stack: number[] = [];

  rpn.forEach(token => {
    if (!isNaN(parseFloat(token.toString()))) {
      stack.push(parseFloat(token.toString()));
    } else {
      let b: number = stack.pop()!;
      let a: number = stack.pop()!;
      switch (token.toString()) {
        case '+':
          stack.push(a + b);
          break;
        case '-':
          stack.push(a - b);
          break;
        case '*':
          stack.push(a * b);
          break;
        case '/':
          stack.push(a / b);
          break;
      }
    }
  });

  return stack[0];
}


function calculate(expression: string): number {


  let rpn = toRPN(expression);
  return evaluateRPN(rpn);
}

// 示例用法
// console.log(calculate("3 + 4 * 2")); // 输出: 11

