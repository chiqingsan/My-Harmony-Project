// 1. 定义商品的通用信息接口
interface IProduct {
  name: string
  price: number
  description: string
}

// 2. 定义类, 用来构造商品具体信息列表
class ProductList <T extends IProduct> {
  private products: T[]

  constructor(products: T[]) {
    this.products = products
  }

  // 打印信息
  render() {
    console.log("---------------商品列表---------------")
    for (let i = 0; i < this.products.length; i++) {
      console.log("------------------------------------")
      console.log(`商品序号 ${i + 1}:`)
      console.log(`商品名: ${this.products[i].name}`)
      console.log(`商品价格: $ ${this.products[i].price}`)
      console.log(`商品描述: ${this.products[i].description}`)
    }
  }
}

// 3. 实现接口Book, 用来规范书籍信息
interface Book extends IProduct {
  author: string
  pages: number
}

// 4. 实现接口Clothing, 用来规范衣服信息
interface Clothing extends IProduct {
  size: string
  color: string
}

// 5. 测试调用1 传入书籍信息, 并且调用
const books: Book[] = [
  {
    name: "三国演义",
    price: 10,
    description: "《三国演义》与《西游记》《水浒传》《红楼梦》并称为中国古典四大名著。",
    author: "罗贯中",
    pages: 688
  },
  {
    name: "西游记 ",
    price: 12,
    description: "西游记》是中国古代第一部浪漫主义章回体长篇神魔小说",
    author: "吴承恩",
    pages: 500
  }
];

// 实例化书籍列表
const bookList = new ProductList(books)
bookList.render()


// 6. 测试调用2 传入衣服信息, 并且调用

const clothing: Clothing[] = [
  {
    name: "T恤",
    price: 15,
    description: "T恤（体恤），又称T恤衫（体恤衫）、丅字衫，是春夏季人们最喜欢的服装之一",
    size: "M",
    color: "Blue"
  },
  {
    name: "马甲",
    price: 40,
    description: "马甲是一种无领无袖，且较短的上衣。",
    size: "L",
    color: "Black"
  }
]

// 实例化衣服列表
const clothingList = new ProductList(clothing)
clothingList.render()


@Entry
@Component
struct Index {
  build() {
  }
}