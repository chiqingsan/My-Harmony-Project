import productAttributes from '../common/PublicClass'

const commodity = new productAttributes("老干妈", 1, 7)


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

function myGenerics<T extends restraint>(params: T) {
  return params.toString()
}

// 简单类型可以依靠TS的类型推断完成判断
console.log(`my:${myGenerics([1231, , 14, 14, 11 < 12313 + 12313 / 1231 || 1231 > 123 + 1])}`);


interface rest1 {
  name: string
  length: number
}

function myGenericsA<T extends rest1>(params: T) {
  return params.name + params.length
}

// 复杂类型需要显示声明泛型
console.log(myGenericsA<rest1>({ name: "123234", length: 6 }));


// 泛型类

class myGenerics_A <T, N> {
  name: T
  age: N

  constructor(name: T, age: N) {
    this.name = name
    this.age = age
  }
}

// 函数写法

// type学习 类型别名

type Any = string | number | boolean | string[] | number[] | boolean[] | object | undefined | null

let zxc: Any = 123
zxc = "123"
zxc = false
zxc = [1231, 1231, "123123", true, 111, undefined, null]


// ArtTS工具类型 学习

interface MyLovePerson {
  name: string
  age: number
  gender: (0 | 1)
}


// Partial 设置为可选
type iPerson = Partial<MyLovePerson>

let Person_A: iPerson = { name: "旺财", age: 3 }

console.log(Person_A.name);

// Required  设置为必选
interface iperson_A extends iPerson {}

type IPerson_A = Required<iperson_A>

// readonly  设置为只读
interface iperson_b extends iPerson {}

type IPerson_b = Readonly<iperson_b>

const MyPerson: IPerson_b = {
  name: "swk",
  age: 300,
  gender: 1
}

// record 构造一个对象类型

type Cat = "小白" | "小黑" | "小灰" | "大黄" | "汤圆"

interface CatInfo {
  name: string
  age: number
  gender: 0 | 1
  color: string
}

type catAssembly = Record<Cat, CatInfo>

const MyCat: catAssembly = {
  "小白": { name: "小白", age: 3, gender: 0, color: "Orange" },
  "小黑": { name: "小黑", age: 2, gender: 0, color: "Orange" },
  "小灰": { name: "小灰", age: 6, gender: 0, color: "Orange" },
  "大黄": { name: "大黄", age: 1, gender: 0, color: "Orange" },
  "汤圆": { name: "汤圆", age: 2, gender: 0, color: "Orange" },
}

// 非空断言

let x: number | null = null

function sum(params: number | null) {
  return params ?? 100 + 100
}


@Entry
@Component
struct Index {
  build() {

  }
}