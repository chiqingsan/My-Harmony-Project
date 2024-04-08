// 一.定义接口IPerson
interface IPerson {
  name: string
  age: number
  friends: string[]
}

/*class myObject {
  name: string
  age: number
  friends: string[]

  constructor(name: string, age: number, friends: string[]) {
    this.name = name
    this.age = age
    this.friends = friends
  }

  private _numbering: string = "持青伞"

  get numbering() {
    return this._numbering
  }

  set revise_Numbering(val: string) {
    if (val.length != 3) {
      console.log("错误, 标签内容不合法")
    } else {
      this._numbering = val
    }
  }
}

let femaleFriendNo1: myObject = new myObject("小王", 18, ["朋友a", "朋友b", "朋友c", "朋友d", "朋友e"])
console.log(JSON.stringify(femaleFriendNo1));

// femaleFriendNo1._numbering // 无法访问
console.log(femaleFriendNo1.numbering); // 可以访问
femaleFriendNo1.revise_Numbering = "wod" // 修改内容

console.log(JSON.stringify(femaleFriendNo1));


class test {
  constructor(name: string, age: number) {
  }
}

const A: test = new test("a", 12)
console.log(`A:${JSON.stringify(A)}`)*/

// 二.定义类 Person
class Person {
  name: string
  age: number
  friends: string[]

  constructor(item: IPerson) {
    this.name = item.name
    this.age = item.age
    this.friends = item.friends
  }

  sayHi(): void {
    console.log(this.name);
    console.log(this.age.toString());
    console.log(JSON.stringify(this.friends));
  }
}

// 三.定义枚举 StudentMale
enum StudentMale {
  Boy = "男孩",
  Girl = "女孩"
}

// 四.定义接口 IStudent
interface IStudent extends IPerson {}

class qwe implements IPerson {
  name: string = ""
  age: number = 0
  friends: string[] = []
}

// 五.定义类 Student
class Student extends Person {
  male: StudentMale
  grade: string

  constructor(item: IStudent, male: StudentMale, grade: string) {
    super(item)
    this.male = male
    this.grade = grade
  }

  sayHi(): void {
    super.sayHi()
    console.log(this.male);
    console.log(this.grade);
  }
}

let a: IPerson = { name: "旺财", age: 3, friends: ["小白", "大黑", "汤圆", "王德发"] }

let b: Person = new Person({ name: "王德发", age: 3, friends: ["小白", "大黑", "汤圆", "旺财"] })

let c: IStudent = { name: "小白", age: 3, friends: ["旺财", "大黑", "汤圆", "王德发"] }

let d: Student = new Student({
  name: "旺财",
  age: 3,
  friends: ["小白", "大黑", "汤圆", "王德发"]
}, StudentMale.Boy, "三年级")

console.log("c.friends" + JSON.stringify(c.friends));
console.log("d.friends" + JSON.stringify(d.friends));

b.sayHi()
d.sayHi()


@Entry
@Component
struct Index {
  build() {

  }
}