export interface Category {
  id: string
  title: string
  cover: string
}

export class CategoryContainer {
  title: string = ''
  categorizes: Category[] = []

  static getCategoryContainerList(): CategoryContainer[] {
    return [
      {
        title: '热门分类',
        categorizes: [
          {
            id: '40076',
            title: '家常菜',
            cover: 'https://i2.chuimg.com/a1cb7a48a56011e6947d0242ac110002_200w_200h.jpg'
          },
          {
            id: '40078',
            title: '下饭菜',
            cover: 'https://i1.chuimg.com/a243ec26a56011e6bc9d0242ac110002_200w_200h.jpg'
          },
          { id: '51761', title: '烘焙', cover: 'https://i2.chuimg.com/a1c1f180a56011e6947d0242ac110002_200w_200h.jpg' },
          { id: '2478', title: '肉类', cover: 'https://i1.chuimg.com/a1e31c7aa56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '40071', title: '早餐', cover: 'https://i2.chuimg.com/a28f3adca56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '5263', title: '蔬菜', cover: 'https://i1.chuimg.com/a276a832a56011e6bc9d0242ac110002_200w_200h.jpg' },
        ],
      },
      {
        title: '菜式',
        categorizes: [
          {
            id: '40077',
            title: '快手菜',
            cover: 'https://i2.chuimg.com/a1c486b6a56011e6bc9d0242ac110002_200w_200h.jpg'
          },
          { id: '51848', title: '素菜', cover: 'https://i2.chuimg.com/a2300e22a56011e6bc9d0242ac110002_200w_200h.jpg' },
          {
            id: '52381',
            title: '甜品饮品',
            cover: 'https://i2.chuimg.com/a23a3cb2a56011e6947d0242ac110002_200w_200h.jpg'
          },
          { id: '40073', title: '小吃', cover: 'https://i2.chuimg.com/a2579492a56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '40074', title: '零食', cover: 'https://i2.chuimg.com/a1decba2a56011e6947d0242ac110002_200w_200h.jpg' },
          {
            id: '1012722',
            title: '懒人食谱',
            cover: 'https://i2.chuimg.com/61dcd2e39d5f4678b1c1364da49ea3e7_200w_200h.png'
          },
        ],
      },
      {
        title: '场景',
        categorizes: [
          {
            id: '52414',
            title: '一人食',
            cover: 'https://i1.chuimg.com/a19fcb28a56011e6bc9d0242ac110002_200w_200h.jpg'
          },
          { id: '52385', title: '宴客', cover: 'https://i2.chuimg.com/a26cd9cea56011e6bc9d0242ac110002_200w_200h.jpg' },
          {
            id: '40072',
            title: '下午茶',
            cover: 'https://i2.chuimg.com/a25b4caea56011e6947d0242ac110002_200w_200h.jpg'
          },
          { id: '20171', title: '便当', cover: 'https://i1.chuimg.com/a17fdd18a56011e6947d0242ac110002_200w_200h.jpg' },
          { id: '52370', title: '宿舍', cover: 'https://i2.chuimg.com/a22f2da4a56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '51865', title: '宵夜', cover: 'https://i2.chuimg.com/a264867aa56011e6bc9d0242ac110002_200w_200h.jpg' },

        ],
      },
    ]

  }
}

