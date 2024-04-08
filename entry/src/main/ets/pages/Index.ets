interface myInterface<T> {
  name: T
  attribute: T
  type: T
  fn?: () => void
}

// 复杂类型使用显示声明泛型
let qwq: myInterface<string> = { name: "123", attribute: "456", type: "789" }


function MyFun1<T>(variable: T): T {
  return variable
}

console.log(MyFun1("123"));
console.log(`${MyFun1(123)}`);
console.log(`${MyFun1(true)}`);
MyFun1<(string | number)[]>(["123", 123, 123123 + 12313 - 12313 / 123 * 123])
// 123
// true
// {"name":"a","attribute":"b","type":"c","use":"d"}

console.log("123", true.toString())


interface myInterface1 extends myInterface<string> {
  use: string
}


let a: myInterface1 = { name: "a", attribute: "b", type: "c", use: "d" }

// console.log(JSON.stringify(a));


// 泛型约束

interface restraint {
  toString: () => void
}

interface rest1 {
  name: string
  length: number
}

function myGenerics<T extends restraint>(params: T) {
  return params.toString()
}

function myGenericsA<T extends rest1>(params: T) {
  return params.name + params.length
}

// 复杂类型需要显示声明泛型
console.log(myGenericsA<rest1>({ name: "123234", length: 6 }));

// 简单类型可以依靠TS的类型推断完成判断
console.log(`my:${myGenerics<restraint>([1231, , 123, 1, 14, 14, 14, 11 < 12313 + 12313 / 1231 || 1231 > 123 + 1])}`);

@Entry
@Component
struct Index {
  build() {

  }
}