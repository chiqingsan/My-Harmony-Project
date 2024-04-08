
// 商品属性类
class productAttributes {
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