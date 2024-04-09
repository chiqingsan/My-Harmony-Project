// 商品属性类
export class productAttributes {
  name: string
  serialNumber: number
  price: number
  briefIntroduction?: string

  constructor(name: string, serialNumber: number, price: number, briefIntroduction?: string) {
    this.name = name
    this.serialNumber = serialNumber
    this.price = price
    this.briefIntroduction = briefIntroduction
  }
}

export default productAttributes

export class qwe {
  name:string = ""
}

let a = "1"
let b = "2"
let c = "3"

export { a, b, c }

