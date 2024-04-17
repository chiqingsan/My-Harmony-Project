// 账单类型
export interface UseForCategory {
  title: string
  items: UseForItem[]
}

// 账单项
export interface UseForItem {
  id: number
  icon: ResourceStr
  name: string
}

// 支付类型 枚举
export enum BillType {
  Pay,
  InCome
}

// 订单
export interface BillItem {
  id: number
  type: BillType
  money: number
  useFor: UseForItem
}


// 支出的类型分类
export const payBillCategoryList: UseForCategory[] = [
  {
    title: '餐饮',
    items: [
      {
        id: 1, icon: $r('app.media.food'), name: '餐费'
      },
      {
        id: 2, icon: $r('app.media.drinks'), name: '酒水饮料'
      },
      {
        id: 3, icon: $r('app.media.dessert'), name: '甜品零食'
      },
    ]
  },
  {
    title: '出行交通',
    items: [
      {
        id: 4, icon: $r('app.media.taxi'), name: '打车租车'
      },
      {
        id: 5, icon: $r('app.media.longdistance'), name: '旅行票费'
      },
    ]
  },
  {
    title: '休闲娱乐',
    items: [
      {
        id: 6, icon: $r('app.media.bodybuilding'), name: '运动健身'
      },
      {
        id: 7, icon: $r('app.media.game'), name: '休闲玩乐'
      },
      {
        id: 8, icon: $r('app.media.audio'), name: '媒体影音'
      },
      {
        id: 9, icon: $r('app.media.travel'), name: '旅游度假'
      },
    ],
  },
  {
    title: '日常支出',
    items: [
      {
        id: 10, icon: $r('app.media.clothes'), name: '衣服裤子'
      },
      {
        id: 11, icon: $r('app.media.bag'), name: '鞋帽包包'
      },
      {
        id: 12, icon: $r('app.media.book'), name: '知识学习'
      },
      {
        id: 13, icon: $r('app.media.promote'), name: '能力提升'
      },
      {
        id: 14, icon: $r('app.media.home'), name: '家装布置'
      },
    ],
  },
  {
    title: '其他支出',
    items: [{ id: 15, icon: $r('app.media.community'), name: '社区缴费' }]
  }
]

// 收入的类型分类
export const inComBillCategoryList: UseForCategory[] = [
  {
    title: '个人收入',
    items: [
      { id: 16, icon: $r('app.media.salary'), name: '工资' },
      { id: 17, icon: $r('app.media.overtimepay'), name: '加班' },
      { id: 18, icon: $r('app.media.bonus'), name: '奖金' },
    ],
  },
  {
    title: '其他收入',
    items: [
      { id: 19, icon: $r('app.media.financial'), name: '理财收入' },
      { id: 20, icon: $r('app.media.cashgift'), name: '礼金收入' },
    ],
  },
]

