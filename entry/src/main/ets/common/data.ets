// 导航数据
export interface INavDate {
  title: string
  icon: ResourceStr
}

// 汽车数据
export interface CarInfo {
  icon: string
  name: string
}

// 汽车分组
export interface GroupCarInfo {
  initial: string
  carList: CarInfo[]
}

// 首页-频道数据（导航+半模态）
export const channelList: string[] = ['精选', '本地', '新车', '原创', '视频看车', '导购', '行业', 'SUV', '新能源', '用车', '试驾评测', '自驾游', '越野', '改装', '提车作业', '摩托车', '视频']

// 首页-导航数据
export const navList: INavDate[] = [
  {
    title: '车型大全',
    icon: $r('app.media.ic_nav_car')
  },
  {
    title: '排行榜',
    icon: $r('app.media.ic_nav_rank')
  },
  {
    title: '车友圈',
    icon: $r('app.media.ic_nav_friend')
  },
  {
    title: '二手车',
    icon: $r('app.media.ic_nav_second_hand')
  },
  {
    title: '条件找车',
    icon: $r('app.media.ic_nav_find')
  },
  {
    title: '高价卖车',
    icon: $r('app.media.ic_nav_sell')
  },
  {
    title: '免费估价',
    icon: $r('app.media.ic_nav_assess')
  },
  {
    title: '以旧换新',
    icon: $r('app.media.ic_nav_change')
  },
  {
    title: '官方直营',
    icon: $r('app.media.ic_nav_official')
  }
]

// 选车-新车数据
export const newCarList: CarInfo[] = [
  {
    icon: 'https://p1-dcd.byteimg.com/img/motor-mis-img/84c01ab4bb1f55a4809781b3a16586ff~tplv-resize:100:100.image',
    name: '奔驰'
  },
  {
    icon: 'https://p1-dcd.byteimg.com/img/motor-mis-img/343173efb2ab28cda1b0e5a5b49dab8e~tplv-resize:100:100.image',
    name: '大众'
  },

  {
    icon: 'https://p1-dcd.byteimg.com/img/motor-mis-img/62946ba030f3589e083d8d3e98a595eb~tplv-resize:100:100.image',
    name: '奥迪'
  },

  {
    icon: 'https://p1-dcd.byteimg.com/img/motor-mis-img/4867710a834bd648ba55797ba5e37f14~tplv-resize:100:100.image',
    name: '宝马'
  },

  {
    icon: 'https://p9-dcd.byteimg.com/img/tos-cn-i-dcdx/a2994c3b381f4abfba82e8ee7a372b38~tplv-resize:0:0.png',
    name: '小米汽车'
  },

]

// 选车-筛选条件
export const filterKeys: string[] = [
  '15-20万',
  '25-35万',
  '10-157',
  '35-507',
  '新能源',
  '轿车',
  'SUV',
  '更多条件'
]

// 选车-热门车系
export const hotCarList: CarInfo[] = [
  {
    icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/c9ddb9ea9b9047029212858b14caba31~tplv-f042mdwyw7-auto-webp:168:112.image',
    name: '帕萨特',
  },
  {
    icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/b16feb96960c4b178686faea93e71f3c~tplv-f042mdwyw7-auto-webp:168:112.image',
    name: '秦PLUS',
  },
  {
    icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/ec234ea1f5a64f9b940ac268fa562ec4~tplv-f042mdwyw7-auto-webp:168:112.image',
    name: '问界M7',
  },
  {
    icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/f9d266bdf7d44b418eee09141be33ec0~tplv-f042mdwyw7-auto-webp:168:112.image',
    name: '宋PLUS',
  },
  {
    icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/c5dcacaaacb3459cb9c4c522a0df3c82~tplv-f042mdwyw7-auto-webp:168:112.image',
    name: '奥德赛',
  },
  {
    icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/36a5c683508cfaefe6350ced649bf34d~tplv-f042mdwyw7-auto-webp:168:112.image',
    name: '保时捷911',
  },
]

// 选车-侧边导航
export const navBarKeys: string[] = [
  '选',
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
]

// 选车-分组数据
export const groupCarInfoList: GroupCarInfo[] = [
  {
    initial: 'A',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/62946ba030f3589e083d8d3e98a595eb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奥迪'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d2ded6021e7b4bedb9cde0a3653626f5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '埃安'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b98df48107bc3529e1a8b4b637fceb98~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AITO'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/26df3b1e22d68d3ea7f1e8b0a771fd65~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '阿斯顿·马丁'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7094b5aee4e3de1478ec733ec638bfd9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '阿尔法·罗密欧'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/653ad03cc7fd49abbe5e6b6fe2a7e2ce~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '阿维塔'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/368be6109dc0c82a001ab1bbecf35c35~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '爱驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c05022f51e6601f6546613dda97ed56e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '安凯客车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/64ec85d4a3de4a03b585f2a4260bd204~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AUXUN傲旋'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/f28b1cb22c074c9c9f934bf890a55c0c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AM晓奥'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a88feaa23d3e2b7d08efd01721ebfcd3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'ALPINA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3d7274f1ab466751a79dbc2fce6fc194~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'ABT'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/051086bb1461c179e38d2228f48bc90d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AC Schnitzer'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ce0fbc9776ca83bf13d68a6dcc6bea14~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '艾康尼克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a73f8cff9159de555151e4a90a5aceb3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Apollo'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/45fc900d8f4675d395fc39174de047b5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Arash'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/56419565b088e67bbc5fd8290a3e0d39~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Aria'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/51123140fa23fac37a74d3898cbee1cc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AEV ROBOTICS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8beedd18e61bcca9626fc3bddeb90fd3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Aurus'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d63c349eac650f323710b7749c7d8f30~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Agile Automotive'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/66b9b74e9bf243082402bb1239d3638e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'ATS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cc918cd5611b5243d24b02017cafafa0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Abarth'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2a0cbdbffe78079b33a97ca4196425f0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Aspark'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b20f5f1fa51057d07422cbdd22f15eeb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Ariel'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/57fe99e2eb05f42578c725e864d69235~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Atlis'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/728ce96eb2d7d06554f730ed19f09035~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AEHRA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b203a895582669d9c6c4145d830fff69~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Alpha Motor'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/6a5dc7553fe5455c8f407bba3af807ef~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AIM'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bba02dc57c9c3664fc839145941198bc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'APEX'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/ab45488efec7494dae3117a2738a950e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '阿尔特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/108ffa0e982b4c6f84d046ab37ac8904~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AC Cars'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/dd245d95cb194e5e8d7d117d14d99ae3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'AFEELA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0a74273e9a0a2dca6d19ee840b37ac5b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Alpine'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/676159269bf523f90f86e078e1e2a807~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '阿莫迪罗'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b0ca081b642b22988785fad8ec601f9e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Aviar'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7837ab051f7ccaf6263a3cb95b3cbe9d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Aznom'
      },
    ],
  },
  {
    initial: 'B',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/84c01ab4bb1f55a4809781b3a16586ff~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奔驰新车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4867710a834bd648ba55797ba5e37f14~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宝马'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/ce848b3a359d48ee97a3ffbc79c99aa8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '本田'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d43a7581e90f508acb9bceb87faaed84~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '别克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/10a76eee736808997549bbb0f716e1cb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '比亚迪新车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d809a071a391474c8067edeb637c328f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '保时捷'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/bf354d6392e44dda9521e4059ae88e21~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奔腾'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/26f031d34c1c2f0cb034b1712797c1f8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宾利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/51ff3ce1dd9d4347953c966f2fd6b20c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宝骏'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0929d7fb1f98a067e02567cbf81db1e9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '标致'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b6d95a86a50f0cf392c8c4af289d0e11~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北京'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e365fc1df929c2760ad80b94b40cc86d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北京汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/705b84f5ef9407db3d280ab7915a8f1c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f921574ac8c4f4e1cc0769ea2029f57d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽制造'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7266db410b1e54125af5261fc59b42d8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽昌河'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/836c22c56fc33889ad46342f508254a7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽瑞翔'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c9b914f4becfe41c1c4f34db9c930557~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽幻速'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d2fae6b959cd48f5a1919595d596e226~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽雷驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/24c96f632eff54fd4518b0737b843c3e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽威旺'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/334846cd3bc21a011b0eb99c87d7dd38~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宝沃'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0e3a71ddca9e1b559b9fcf2af0b0d37a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '博速'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/591a1f28b4726cb7d7f0f81757f0fe32~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '比速汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0fca62925cbf729b06e4602fd82f95d8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Bowler'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c244911965f26d377b8d63e62a35a804~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '百智新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f6dd15abb11c11580da6181d9a671156~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宝能汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/4d3e1541defc4f02a9c16d0e363407fd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Bertone'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5e3bbb8a059862abfb71fcac77ce04f4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽道达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9724a3e6a624e1b1be8976f1e04ab9a1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '比德文汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/41db6d6976aafb8e805f9efa50327fbe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '比克汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5d8149b4ab555696cf45e3d24b3e0e23~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北京清行'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a66bf1d85a5cd542fa27f8f47f40d15b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '博郡汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a3284e084efca5c9a02935414a41edeb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '布加迪'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d98985207d6d4aacbce148b4163e9ecb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '巴菲特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8a63689277456a962cecda2060a7ccbf~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '拜腾'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5be891c4d6ba52c93b1c261afc5cf233~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宾尼法利纳'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b0eebdfad53d17e8106523324ac4bc32~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宝腾汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/20e2c3995d35ac111d4bf642ac5d9b42~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '北汽泰普'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a65be9a2d1a09ec7d42af7b2f0c42d62~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '保斐利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/60870423ec7b7bb1eecba39717e418b1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '百度Apollo'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5a510ad1733716ada50ac7fe92bebb31~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Bollinger'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b5c1a31fcf1616690dcabcec496fb571~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '博世'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0f2d91c1973b49e5a2f042bc0e3311a7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'BAC'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7261965b28d3feb9874cd83a4dda4857~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宝骐汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0fa945a9eade2b643739f3b35e8f8169~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'BeyonCa'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/1a792ada657b4753b82e2f648339615d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Bizzarrini'
      },
    ],
  },
  {
    initial: 'C',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/95744f21ad1bb26f9eb522433471cecc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长安'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/356d1807412b4c3cb1e0c61fc961e2cb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长安启源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4b40d2b4908add3adf43db45963328b2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长安欧尚'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1fe333afdb473210c566e4630846f710~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长城'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/918d3724f53185b35bfeb4cd7ef4380c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长安凯程'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6fc54f12db026547a3a78445e2b8985e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长安跨越'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4956cf9a6293e016e33f95cb525cddf0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '创维汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/734e33465e17efb702ed5ccf42ac5856~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '成功汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9651eaf634e545c8db97c78704bb99f5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '橙仕'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/02f9bf3357f05823aa2f98f6eb1114c6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '车驰汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/dce8069cbd866851b0e0a36643cf0ae2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Cupra'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/26db4e1c4b65d2d91767461a99f53258~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '刺猬汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/88feec2f2a09975a813f293ab40361fa~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '昶洧'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/208973b9111e5003104bb2c8db3947d1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '长江·EV'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/5c699f46ffac41f3aa7dc6ab3c612de0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '曹操汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d242482fba630ea2833ae62b83d62db9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Corbellati'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/fe96732b81a913384063a579e701d18c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Conquest'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c85a4ba103ca7fa6364daf5b9a191076~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Caterham'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5d953ec38128331ad2960c4e4f7552be~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Canoo'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6d6c98b1b6f522ea14d1861b69a02454~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Czinger'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f8fe6fdd55b2348ce93f53eb1ba90a57~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Continental'
      },
    ],
  },
  {
    initial: 'D',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/343173efb2ab28cda1b0e5a5b49dab8e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '大众'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/51504ccf9decf37772e06597572c57f7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风风行'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/603dedb8f70ad1ec6cd3fc97c0cbbb11~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风风神'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/50810534aec9c258b515074409aea66f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '道奇'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ca1fd6560e4c4cad385aef01512bc28a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'DS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4cf3feed644684d62c68068389ef094c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东南'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d2f83dcd61d909426b492bbd9c3d4c72~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风风光'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/6d63563d575347e38da80de539a2f6d7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风奕派'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c38e8de9e6da9027140ee88965b507b6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风小康'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c2c418ef843dd6078417297f89f489f9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '大乘汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1ff2d97b8024e417997e73d796e85f0b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '电咖'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/f7cf20ec75014574b5afe7be0899e118~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/a7f61b74e422474199803aa79c7fe608~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风风度'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d76ab376af94443997a5ad66699a3dc0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风纳米'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c479931e543e61f665e4d67f62614e93~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风·瑞泰特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6924a6a11d8ff8699e9a926881d3935b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风富康'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2e7c5871c68d642ab27969820abc9bb2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '大运'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/38b0ed1ecabe112d603bf286d4c294db~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '电动屋'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b4d0ccf9b9b8c55ffd161ae37b4aed85~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '大发'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1a22e98007a736bc5534db120df868ea~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Dacia'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d1ffce8920662d5b510280d8d0f4cef1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Datsun'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a083eb2b89a98a1836e31f07a67b1b8b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'De Tomaso'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2f105513c51188f6eb6eb0f0a4d58ead~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Donkervoort'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/307f9dc036fe1e5428572dbac1e7b0a3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Dianchè'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/aa783538378f5dd27b0decc8970c10ed~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'DeLorean'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9dc950a2606c155fb81ba07af5bca8f6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Drako'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f9793a5a2e9b736209293fb2ad8e2021~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'DAVID BROWN'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/871f2f990ec436e0eae69ab85eea9f6a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'DEUS Automobiles'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/603dedb8f70ad1ec6cd3fc97c0cbbb11~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '东风氢舟'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e33341259b3838eb6fc1a54443ec28d8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Delage'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/b7fb6894a4c64aa798d0d3bba11f30c9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '大力牛魔王'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/5a7d8cb4939a42d6a665afa2947374af~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '戴姆勒'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/df5125fc751cf8ba6ac0c698d2e1a252~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'dÄHLer'
      },
    ],
  },
  {
    initial: 'E',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1965dc60b4ac1518d2e25db53c522ced~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Elemental'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f481e350734f29fe1b3d0746cb7a04a5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Elektron'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cecd0a67a6869dd8dc7ab81e73d5d7bf~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'E-Legend'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9ce777381d5e68415f55bc44d511678c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'EdisonFuture'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4774e965753c0b7e544629689fd58365~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Electra Meccanica'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7b934b6dcea126ae5943c59406c42b9c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'e.GO'
      },
    ],
  },
  {
    initial: 'F',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/66f2b4fa526340c589fe5d2b6bdd4d11~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '丰田'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/26bf5049dc5224161785225163fe6959~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '福特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e480bbf25c481fced2b4004576b39377~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '飞凡汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/5b96a8b1836d4107878280cd08b7c453~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '方程豹'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/30f928f03a9e85dc1d6ce484cb0e938f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '法拉利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f4385768dc61f72ff8670bef60ab9c9f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '福田'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/db8d97c45d7512c4d136a0b871f8fabe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '菲亚特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/de4ada9ef215972b0c07b04ae83394fc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '福迪'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/939e626e4e05b50ff3899f91697af2fe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '飞碟汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/39bdda2e867d2a890c7a396c63b9b653~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Fisker'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a1f936ed93e5564f61e4e707dacd5785~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Faraday Future'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/95ce134dafca50f502316a467d2bd3e8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Foxtron'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d92b752d562ee284d0794c9d51a50337~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'FM Auto'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ff425e2354fa7182ccb9e7002c161141~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '弗那萨利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/45e5e60fd18481c8d5f4a5a1c8962c68~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '法诺新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/61c2aae782784502a7e2b85f638fea32~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Fresco'
      },
    ],
  },
  {
    initial: 'G',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/12bf3329a611cf9222b88b4e9fed5b6a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '高合'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/dfddc97d247ec51e0fa082ebcfd7ad4e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '广汽传祺'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b0d95358f37d5596c9d52debed2d421c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '广汽集团'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/11096b9e6fe282d161c13318b986f864~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '国金汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/adcafeae0f8acbaebc8371daef89b5a4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '国机智骏'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e8d9aed938dd5e332c4d8b0a0c9ebdbc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '国新新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/46dad0c85f97cd9dde48fff4e4bb7882~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '观致'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a06a0ff9f8506674943e0f6827564008~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '广通客车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e620f3a98282161dd5d6224a97cb3f0c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '广汽吉奥'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d6861f2032d7cdb0bc21710ad2cdee08~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '光冈'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bd2e6eafdd8daa08be5fe7c045b99105~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GMC'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9983e6c42a9a92ef863d0d4c02f3e67f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GYON'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b36244ab2200f7d0bbc49c731f0f8b8a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GFG Style'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a4b989bfb4c83f57632deb476986fd56~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Ginetta'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/fd6b43e24557cce9542b1c74c3781cb0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GTA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/63a1a02885c180e13d72a3c571cc1d43~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Gumpert'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1b71a4088ee31c7b6d6b5bccfd7c7c7f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GAZ'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/212e9a476357213e804244d3739e81e5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '格罗夫'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ee9a19f14ef172a5d896cbd5f3c49ca6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '谷歌'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f6c8cde4ca1b32a091b45cf27b26a56a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GLM'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/eb5fb48403025142da3b5b8a9b10da70~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GMA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ae7daf70f13e8e149e781861bb01cf1d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'G-POWER'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/11d23470e0be7b2a898a919b76c9687d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GUNTHER WERKS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/869516174286eeae526018924646238f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'GEMBALLA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f9f14168eb3e51d1b03195206a3e5c5b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'G&B Design'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/1e88204698dd4de399bba58e9b5f5996~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '国吉商用车'
      },
    ],
  },
  {
    initial: 'H',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d557b170618043b5911d036fa7c8263f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '哈弗'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9a2cf4552de5fd67f7f3a1f241ed9b48~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '红旗'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/a784c5c391664266bfe7f71dcbe62d35~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '昊铂'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/4f077a35cfec413eb8dbb76751fa7f29~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '合创汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f85275e1f085c25d14e894c4d17c2795~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '海马'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6cfc8d3664b7a9de66641d11f481e0a6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '汉腾汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/772f1e3db3d2650776de7745ade9c626~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华晨新日'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1474eb677f6f97f93bd40dcdc3fcdca8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华泰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1474eb677f6f97f93bd40dcdc3fcdca8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华泰新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e6ce944f11e0db6c9aa2c3843ef50c5c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '恒驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/27a749c4f43437c889c6fbd5f2587885~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华颂'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/32d6b9479c6ce7348aa12b9f1d5e327b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '黄海'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/90efc10d555a6c1b65ea1446d6cae002~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '海格'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/959e32fe03bff73623ff773654bcae30~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '汉龙汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/09d565de789d85370e15937e1187c2da~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '恒天'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1f5a69a5c13f1eee567360ab5c874890~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华凯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b99debd01d9162e543288fd303339e85~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华骐'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/fb8ad40ae1cd655dc2610740a9aa2c1b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '红星汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7b7dccf1c0314b69d0d2b4c383a6c95a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '悍马'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d25fed556eb5b6605ea33377a7add8c0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '哈飞'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a2d441449c77bf3961e00794e6fb637c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华普'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5225766ba108d4c662125a96992db924~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Hennessey'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/55b9e029cd3e422aa0f326222211fff0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '霍顿'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/35258a36d80b7a1e64716399a3efce38~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华梓汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1c702f7814bff2ed07e134661f702a8a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华夏领舰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/813f2de173bf09dcb1323606375497e1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Hopium'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/6a5dd2a0d7334cafa01a3ff7c963ddd8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '活越'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/b92ff1eddd8142bdbbdc3c6f06c357f9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '恒信致远'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/66c32608ef3981ee1126ae82634ae1d8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Hispano Suiza'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/52685fe09b4fda3d7dbe6bb1969e8db8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/24c6f78f04056c59405394094d0ddb09~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Hudson'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6bcabce12042f5cde2d704ef2a2e6242~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'HOFELE'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/798fb16d8eb41bf4b2d630be8a94439e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Hyperion'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3a7af8e21a8ac6e63eacf36f9f2f5d1e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宏远汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5c5d1de8f9d91a89a35de8c9ae53ba1a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '恒润汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b8c4c5f746699d78cee4e6bb4d5aea8f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '华人运通'
      },
    ],
  },
  {
    initial: 'I',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/4eab7f3296ed42d08b0d88a344d8c4eb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'iCAR'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/50efec31cfbf03b85d37685b67cba752~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Icona'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c6c952213842183f44760354ec60490e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Italdesign'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/595738a4c70140498c9a759ca334db1a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Inferno'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c103c4a8a16337c144a7cb65fbfac457~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'IED'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4878afefcf2ca3fe9ef3abe5f9e703b5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'INKAS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ee004e802b09d03ebc51a88df7f49a93~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'INEOS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0829291e2ac4c98d43e080b645a15ba0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'IZERA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5be85ba1952693c4041d968b40c6c899~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'INDI'
      },
    ],
  },
  {
    initial: 'J',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1badee776354a960ac16444f51dad339~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '吉利汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/8bac8e50316b4b96b9f9f58915dc7266~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '吉利银河'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f44eceb65e1590ab7aaab48a698feeed~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '极氪'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cb02ba66bb4b29607471b163606384e6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '捷途'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9ca75c567fa6804e672fab69c9697d92~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '捷豹'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7f456a5056c5aee7e1b8d416f031c472~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '捷达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/67411985bcc9406e81c1fce46cfb30c8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '吉利几何'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2d8f540b073b4c7db478f278ec242ad1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '捷尼赛思'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/119d2dd7d9eef704e7d3135334996e6b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Jeep'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b7c7930f6a6be58c3ae37de16e7fa772~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江铃'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5a5a4f58444966bda9e528afc5c14df7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'ARCFOX极狐'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/c8b251bb5162450e905a0a2cf41978cb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江铃晶马汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/701fb2e64f16423f81dc1060fba0453f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江淮汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/cc9a0636b9424ce9bdb34418d7009447~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江淮瑞风'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2496acb3d1af45619f04a4eb2a1fe4fd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江淮钇为'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d9f6911db099435a8d006a28943c2f19~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江汽集团'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2b6a39027ef62ebbb310a2db8636835e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '金杯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bc0b6d995581dc7821541b0d83256f92~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Polestar极星'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/74c9f3610db96b32afdde80a66b2feef~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '钧天汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7a13a26deecc339604f1e1a0e08a477b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江铃集团新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/178c3c7e5f604a56a57c3a9f832c39aa~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '极越'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/74ce9f92eb5edfd96b94499681735c4a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '九龙'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d28b84faca8b25d9f277ca8383c52b0c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '江南汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3bf6b1bf2e83e11cfcea4979f432720c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '金龙'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6b70ea0488a12a06e3e08cecd6611abd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '金旅'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f812572312a113fa87808cd6d35c4bf5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '金杯新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/f6305c94e7154649b2f2d0c62603d911~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '极石汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/c9be57d1107b427cb79cd97a9f0e4c3a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '吉祥汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/abdb4f84ebeba15ebeaef019117cf635~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '君马汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/dea6a99dc7ebbc25976d84fc48c30cb4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '嘉远汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a4f879285f31633b5b793abc8f7b581a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奇点汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/11fc4f087d51e310b137a84c0eb0909c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '金冠汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/8c9e520d2e6a4b6eb39fc13967109fea~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '金琥新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2b3cf6c701aaf57386efc40b749ff62d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Jannarelly'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/0ad456eafd7244d6a8b74b21e94d88ee~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '佳跃'
      },
    ],
  },
  {
    initial: 'K',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e5023f5e3801a57c82644547c6f3b2a8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '凯迪拉克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/39b2008c71917128d8eda9612c35e12d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '克莱斯勒'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/72d2dee2c3bfdb738816da63d38bab89~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '凯翼'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d77e72e7439a3f6c66071614a46f9a90~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '开瑞'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/45be61aae109e4df2695269870a654af~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '卡威'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/67db920833f391cd12bb18ffbbc0cd42~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '卡升'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8b95e0a8e8dc12c74b8526361495c420~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'KTM'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/894ec680ec8d490794a05d31c8cbfbea~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '开沃汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ba897c57d8c4ad356aa6c3a8972c3d24~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '焜驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3db4292262f5974a4a73477ac260f935~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '卡尔森'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/144dd59ab728bab6cd491801b119e774~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '开云汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/75a64b84c6b68200e3260e216cf82fcb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '克蒂汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c1d2427f812aa7702d069a46e6e4fd57~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '克慕勒'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9639b0197a3ce749e9dbf20ce683f9fe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '科尼赛克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b9c903f16c2e1d34087cfaa78e17fc66~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Karma'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6b250eab4282ff84fa10e6216e6020ad~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '凯佰赫'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0dde9c6af83b3a40f9e3ab5afedbf27f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Kimera'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d3759d35237b53f31148b6ec6c79087a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Karlmann King'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/598d62ef19748163ce877059bf5c1eb1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '开利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7bdd70c3b6f23087782636ae5f2babb9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'KHANN'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3e9bb5a8bd34740c7b56ebc4cd23b34a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '凯马汽车'
      },
    ],
  },
  {
    initial: 'L',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2c52e02dd202db11ffaf361a38ca44ac~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '路虎'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b43814293efa6db10b762da4d351bfe7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雷克萨斯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6bad2891b5ccfb6b538c73b1d236ed59~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '林肯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/25321616a634e8f615a9c4225f792be2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '理想汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ef40e34ea01b91d1be9f49d71d0cb0b4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '领克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/71d99bd884bb2038ab560981fef08ae7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '零跑汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1993ce02e63661880dab69062209a444~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雷诺'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e7357c5b6d10aff66747da83bdb78f99~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '劳斯莱斯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8cd3841160b7fbfbc06547175e2aa7c1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '兰博基尼'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/986dac13d0d128da9aabb3df683e9b34~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '岚图'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f3c0332c6775722942f7a6855a0deb87~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雷达汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d825ff1144573a973ea737f29402b015~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '铃木'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6171ee5f876108e210598bf2e64cf06e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '猎豹汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/84cdb11608f17b7853ebdb4a1665f753~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '路特斯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/e58b27580d2f4ede8c67ac6c0d306ca4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '乐道'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/6d1ac189f0ee48e8b77aca352789e5ce~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '灵悉'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/774afc1d1534f4a91a3d99373c90f1b8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '陆风'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/127ab04b01f7b644f6323468e1fc9cbe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '理念'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e291f84aff2e384328790c4713d5a804~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雷丁'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/3b18f2c8423f45079d08d83d45eda7a5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '蓝电'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cec4c5353f656e341df3e81c9a7cbe29~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Lorinser'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2dd86b61e56868516dd78a0aef8556c5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '罗夫哈特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a6c4c170f5992b4a158723d75c087ec8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '领途汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/87411582d8580d11ab48c88d73ef806a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '陆地方舟'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1d9dcfede849d2a01a3ffa7ba16733d8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '龙程汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b323dac3254b5fd167f9eae26bee49d1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '莱茵汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/af239779d37dd497c96ff2171bb54b86~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Lightyear'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/3164332c9800432da77c50a9972f6827~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '菱势汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/608a1e4a4224ab5cea519173fbecebbe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '罗孚'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3440d6b228b5273717b95c6ebf2d300a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '凌宝汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d835c1dade085fc7f49f88f33d91a9ca~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '蓝旗亚'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2ea65574e3bead5047ae79dc513a723e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '力帆汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/31698632bc400ffdce7ad9b8a3f8f47c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'LUMMA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/14bb7192ca174a34a90499e2f05ba65a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'LEVC'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2018e29d922e8f8eb7f0486a930676ca~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '拉达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c278092f86b7f3a21988e02866b118b8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '莲花汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bfee4af9b5eb03340cdc15891dee4f56~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'LeSEE'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3669dd9f1396d6cfa7b47c1b9653b226~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '绿驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c73f8e65096893e0b9c5bd14c5cf42b4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雷诺三星'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/dd9b84663589d168bd0710258918099b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '拉共达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8d00b966d8d962807824188eae244033~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'LOCAL MOTORS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/42e3322e83063327a572a9ede50e23f8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '领志'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e062210b574de31b4b1bc3b1cc1905aa~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '朗世'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c5c31892ebf1d6aab7e6d3e17a925871~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Lucid'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0544547f433896925c4a7924cbf0a9e9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Lordstown Motors'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6ade821a598e74cc57da3c8ce85ee7a3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'LIMGENE凌际'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/aba92636ed9f903d78fb798a65d00ad9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'LIUX'
      },
    ],
  },
  {
    initial: 'M',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/25a4b68c3c166d19c8607aa500b29ffd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '马自达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9556900e24b43302eec0d91b4545426f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '名爵'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0df4accdb73f460f89b1aea238fcb2c8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '玛莎拉蒂'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/28df10b415f192d7045cf645fea11f30~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'MINI'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f60054392213a036e2df0a462676f86a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '迈凯伦'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/58da571e60daf824166e0e3d414a6056~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '迈迈'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f2577064dfd0bcdb60838c838133be6e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '迈莎锐'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/213c0b9139d32f0f98b5f31c4acd7e58~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '摩根'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3ae7ce7f2473a96a8a3178590045a210~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '敏安汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3106291595f7e9f1f25ac50938eb0b58~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Mazzanti'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7266650f441a5c9516b3b81930623f80~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Mole'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1bfbbe3875a568792169df6f72021a9e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '摩登汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/80569b9c40d60aedc2860a4ba3f09afd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '猛士'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/daf66cf39f99a65ddd5cc277504e27e7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'MELKUS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/806a10a76b777bb022b16486b31e055b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '迈巴赫'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/31794dfcba2bce7c8a8cf84e12218201~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '米高'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c599b54b3d7c43aadf65edc54aaa6e94~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'MAGNA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6970896fefc4b2cdccbae71f45f5b755~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Mahindra'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e73599adff3b2afa2b06aef9253137f6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Manhart'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8fc61773305956384a9f4c6d6f1128a2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Mobilize'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e02ef640f5ac3d8d4b4da1d55f67fd85~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Moke'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/fb354ff41d5ee9ced5346b95c094b433~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '迈越'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/9072d939f10749c4817f9758b24e92e3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Micro'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/45346c088bcab9061cf0d8b50ebac86f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'MILITEM'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b8cfa9b6100dcb7175845ff1077cd979~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Meyers Manx'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2402824eb600406ab2d3709c810d8364~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Munro'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/1d68e1ff6c4741278047877aa8974a2f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Mullen'
      },
    ],
  },
  {
    initial: 'N',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1f5e4e807a24a6355201bea736d3baf7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '哪吒汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6c551e2b14215ddfbc55dcef1b474068~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '纳智捷'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/04652c3df5b1e2011ab4f3584f796831~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'NEVS国能汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a47e54ac5c47da967c422adfaf799a27~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Noble'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/734de1ec5c05ec8fd408241c9b6afbbc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'nanoFLOWCELL'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/eed1f04995cc3650208a845fdac18617~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Neuron EV'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/61a083d8e9673a74e541f1919fdbffe0~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Nikola'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0bf9b6ba708d73f297c6a26847e28a14~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'NamX'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bc261bc4eaad10736a97e64df927f595~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Novitec'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8fd8ccd4f57f81c2a9699d63efdbf214~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'NEXT LEVEL'
      },
    ],
  },
  {
    initial: 'O',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/28d3b85cbc8e1bb2c0e643931ec1baf3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '欧拉'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2bffe76703d4803c296e634eb8641fd6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '讴歌'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/843f4cfcd3dfaf379c8b9f9b34ae87f6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '欧朗'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9c41a1c51110639bd2f50f5559bd60cc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '欧宝'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/592f7bbf8295c9ecb3b73b2800ff27eb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '欧联'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/dffb3922ed59f767db7bba914358ec46~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'OBBIN'
      },
    ],
  },
  {
    initial: 'P',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9913287605a9a4e7a18fed29544ba853~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '朋克汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cebb2fd51d5bbe8379fdfcc8b2f47f08~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '帕加尼'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9c685e8c519b38a48538ea70f19591ab~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '佩奇奥'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e546338daf529d7f020ea64f13c080ac~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Puritalia'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/df331d3bda16860d23086a86876e65c8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Piëch'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/85d34cda2796a59ebec7db43f3fff94d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Pogea Racing'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3c5a94ab2c29d7fc21ae98e8ef5ba422~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '庞蒂亚克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/662ec0961433fbc0b1ae865b89c37bfe~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Posaidon'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/1e6242ece4a1400fa904a90adaa3db57~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Praga'
      },
    ],
  },
  {
    initial: 'Q',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2baeca4441cc44f592d4953c98321fc4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奇瑞'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8874a318d056b16758e8a1cc80c19172~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奇瑞新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9997244f9934fdebe915cde58bb2ddf2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '起亚'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/ca2bbd6d0ebe4a43a21396a8678512e4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '启辰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d5d5186ea069491fdafec59f6924919a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '前途'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/faa734dba057380fc73e8d64baef64d8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '全球鹰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b9f041b20948b5008bbb420482ec4b10~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '乔治·巴顿'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/19a4e95cdb5abf8fd7123903a6fd0811~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '骐铃汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f00e6b43a11bbdc297c75e6073571fbc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '清源汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0fe518b377b0b1fa4787039e54be5183~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '奇鲁汽车'
      },
    ],
  },
  {
    initial: 'R',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5feee803f00613b3dfb9ec977192deb5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '日产'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/97bea75b96b34fe3872344e046907cde~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '荣威'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/885955536a00de6300b53d2d3a111b27~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '睿蓝汽车新车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e51603b43d41c06c004f556a20020484~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '瑞驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bb37dde431a010c4dd286e5be733db6e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '容大智造'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f05832ba9c754dfa15105f24a6bc5a5c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '如虎'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a534ef246eda57d72089b8d4525e10ee~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '瑞麒'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/acbdce3c6a50a2ac24d49e13b9c6e931~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Rezvani'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ae139443a4b2de3bcca1c837fd599263~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Rimac'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/103671f6b3fc10bbfa8d7b7f371c6565~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Rinspeed'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/76c282ab594668cf3022581f9b3e8c7b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'RIVIAN'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2d28505568baf1b932c5b93bfaf60dc5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'RENOVO'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f6390d6846b9cbff47dfe9866905e006~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Radical'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/38823f1c34c5e4019ff2fa73f974996e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Radford'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/7713e68bfe104356adf4846b7ee01e28~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'REVO ZERO'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/57e01122abc54a11874016a053548ea3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '瑞腾汽车'
      },
    ],
  },
  {
    initial: 'S',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3ec788e28d2647bec8fc7b6f0f551a69~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '斯柯达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5eeeb462c08053fc573f81520635ea5d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '三菱'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/00dc924de414edc53779b408f13df233~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '上汽大通MAXUS新车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8f2f638de644c38c7a228a72abe8e85d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'smart'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6fa07456e4ab57573ee49f17fe72941d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '深蓝汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ea83a344e4b583aac8130b9d24dddc26~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '思皓'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1f2019237dd6ac5657b18b75f66a3af2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'SERES赛力斯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b7f695f8d411ad395ebbf4f5bb003914~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '斯巴鲁'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/1c9c1ebdab0a43b2b79c0f440545b39f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '世极'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/c079e93086c44b2c811ec85e4e6be1a5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'SWM斯威汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6385e1ec28ddf0dfa5bfbea07bb2f0e3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '沙龙汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/325f428f8c811b119fbbcb82470ab21b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '双龙'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2c676cc0d7baa68202fcbbc2950c27be~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '思铭'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d427df451b0a08e8a6f4bee709d1e7f2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '速达'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d6604d6b6c4600ffe0ecd73f7edc4dee~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '陕汽通家'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/a282fc984dc1467390f210b93befa4b2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '上喆'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e3b152491516085e0a60cd1811b163e4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '世爵'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/07ed680c596c7f116caf2e14086e7358~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '斯达泰克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ddbe133bf8fda1740fc662f1a7830e7e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '神州'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/497f295f7475db8e1d0abf99bace13fb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '赛麟'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/14f0e6617c09fa28a8dc80233c1ab78d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '双环'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cb1aca4fc9bb2bbcbd62085eb8542605~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '萨博'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/725f1e29ff338e72a35ffa9361ea33e1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '上汽集团'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bcb8871b956dfe58b52f0eeffd7c0c2d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '申龙客车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/4512db636d29410b90f90c87a8dc0a14~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '水星'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/52d7bf62dc7a29e8909d2b183c9041a4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Scion'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f05f661942a8de8f19e2443d5a94093c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'SONY'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e438d9783e57829dabd218f18650c25d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Sono Motors'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cdfaa77795e1bdc3d0c84009c4285064~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '首望'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e55fdf29937f61a6b2f3b3dd6b6fdc7c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Share2Drive'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d1a2f81d57507c68b16d05d2e3d9a831~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '松散机车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/aa6e412284504f84ba30ebe67775654e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '777 Motors'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/d6edf4bd6df64e408a4ab53492bd52a5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '盛唐'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/0dcbcdddcab34138961c7bfe9fd19c3e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '3D Design'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/594696a58fd543e5afcf34dab83b0d87~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Silence'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cc8f37330e33a8aa537d81572636fa0b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '斯太尔'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cd0e1047f4c55336d4001b283c8d68f2~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'SIN CARS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6ea9edabe8979aa510c5cb0de70d9b02~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'SPIRRA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6451abbca8223f8fff85189d18f201b5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Spofec'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/06b5d0d961075f06dae3b60e82e3a7fd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '上海'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7065e32115eab85d58e13565d2c512c5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'STI'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/93f7b9ab46be6318923da483aae3a6e9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Spyros Panopoulos'
      },
    ],
  },
  {
    initial: 'T',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/222f2748c0d6e9c69c00a304f2ac8da1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '特斯拉'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/17fca7e0dec078194be0cf6248c79706~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '坦克'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b66372f95693eca019c33ec19f21a383~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '天际汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/36cd231f3759746482bbb2f64e99ec2d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '腾势'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1ab6499d4f1ac545f1b1537e8088eee7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '泰卡特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f074a86516d081064a2b4bac895216bd~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '塔塔'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/fe60e387bcf923db0c73a8880bdc8a00~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '泰克鲁斯·腾风'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/804659bcc8870a9f96eeb0f9f0fc9dc8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'TVR'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/de66a1199a338207cbbef91b0b3eaa36~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Tramontana'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a9444fa3a34a308e6bd9c166bab132b6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'TOGG'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/aa72ce4ba6781e4369ad122395309007~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'TOROIDION'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f6f00b01175ca5ea7c70ba5c989e64de~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Troller'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9046d63ceebaa564640fbb75c4df1d7b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Triton'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/10e6188eff0ed110b5373738cc807327~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'TopCar'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e90c709f3dadc1923a2cb2fe0a4174ed~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '途柚汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2e8fc90c734f4d109593bdb8139e17c3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Theon Design'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/8ddf06529a5b4462aef38a598b67cd08~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'THK'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/65216eb0f29218243f49208010f6ccd8~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Touring Superleggera'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/da7d4acbb3a6638237d31c4f437a7dcf~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '拓锐斯特'
      },
    ],
  },
  {
    initial: 'U',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0844359269bd043dd9a0b63bf9e000d1~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Ultima'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e5840383b8e02cf8c500f42f354aaf9e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Uniti'
      },
    ],
  },
  {
    initial: 'V',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f8bbfecd904c51cf16d8c3706488e8f6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Venturi'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/160bf07adf34d2fa1d665223395e0444~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Vinfast'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6a13e8ab2fc90cb9f1f65a41b5a416bf~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'VLF Automotive'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bb5533abc4559fd7ce9768c0c58e6261~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'VANTAS'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4550695f081ccff630a298cce56d63a4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Vanda Electric'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e2b6966ea27e00bda107ac06d9d5ecdc~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Vega Innovations'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/01ecab2df03f462d9f83c31175bfe466~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Vanwall'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6c5e660f8cf199bc1ba4f1a772c0d47d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'VIRITECH'
      },
    ],
  },
  {
    initial: 'W',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/8232aee86b2b484396e4fa842baf4cc6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '五菱汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c06fae433bcc4a55d7ef3b519704781c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '沃尔沃'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f178e29e06e5491eb09096415259e95e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '蔚来'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8cbb2f506df822a62398c09b104889cf~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '魏牌'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f303361d6bd2a90a2bb76addfdbd653b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '威马汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6fd2573aaba1def60961d2856148050e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '五十铃'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7b5c7528d84b7640bc70654c7851646d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '威麟'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4e56dc2ae119b0a8c51595b065c05ded~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'WALD'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5a5ac7f3dd996fbb8a695cd00b01bd93~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '伟昊汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e745100a66ae90006362bbeb64bfefec~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '威兹曼'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a270071f55e19822807a262b5f637f95~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '沃克斯豪尔'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2c7b4f811ac87c0c5a2550adad04180f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'W Motors'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d89faa3891c86d27b4d5eba600958c62~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '瓦滋'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/3c5ea6872449465d865c47e536877c48~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '未奥汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5db91281cede152af35fd6f8843b25eb~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'WayRay'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/57fe398c5325a7fb0f60688ecebd854a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '万象汽车'
      },
    ],
  },
  {
    initial: 'X',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ae65202f5d1e39a2052acdf18afa5d14~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雪佛兰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6af469ddb92b4c24628c5884ab323f21~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '现代新车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/45643feed53220ec5159662049ecb330~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '小鹏汽车新车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/a2994c3b381f4abfba82e8ee7a372b38~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '小米汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a887a36f756465407c1ac9bb330505ce~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雪铁龙'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/b3d269e21417088de066801a92fe8409~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '星途'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/dcdc13f88c744a2c92bac90e3a77db2c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '享界'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/c4625867982b07e1a505bbe10f22662b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '新凯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/534a66385fc3134620edaacb7f58cee6~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '星驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1334f74e38b0e467ab524521d559e088~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '新龙马汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0f086f88908cfad623ec993c7661e41d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'SRM鑫源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/ae4af0507d8240d19d50b49c783f4d50~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '新特汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bb9a42d41af7be5a969d14eef27013b7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '谢尔比'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/cb8274929f5038b2285599d5e91b09c5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '西雅特'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4035a82aecebe5e1dbfacb879f14e64c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '西尔贝'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/db0b39d4de932038394392b10893b6b7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '小虎'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8adf284775c5c79c1519f8dc2dc5e510~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '新吉奥汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/89929e00f3cf63ac813dac9b476ca015~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '小跑车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/a2b5ee36c2ff4be48845314689fe3176~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'XEV'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/72f20f33a8ba4e728ed4521e05537e16~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '小鹏汇天'
      },
    ],
  },
  {
    initial: 'Y',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2458a930c2c04a9c9f6bf6897840c491~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '英菲尼迪'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/55fe313b27dbd598e4afc7da5ae88c49~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '一汽'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/6e4a8cc4cdc842b6b2b94d24f18a4c8c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '仰望'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a031226e7910a4d8f071c6b62931a9a7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '野马汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/0ee30ccec90e48f8ac21844731169a7f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '云度'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/a36597f34bfe9604f5b440129386e01c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '依维柯'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/80675e64632b28d726b2bc7cfe8f5b02~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '驭胜'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/9e81b12ee49126d059206b550b10678f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '宇通客车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/1aaa5756c1c66aca906a4244f1e48e0e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '远程汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/57f15589f35ea5b4302e7ac9056c7471~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '御捷'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f888ebc54fbacc8a232dfa42e1cec12b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '英致汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/dc3a483498c2c9f2038094149769c6c9~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '永源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/912465c8b9e17ec989cb8cf402d4cd40~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '裕路'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bb7468898817ad384fab428fcd44b5de~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '云雀汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e3fc0d751c3606bb8504f7319c4dd746~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '雅升汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6bd8fb49f55aee173a5bdc715c6a672b~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '银隆新能源'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/5af588c795ee4192a8dbdc28ab6b2b5d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '远航汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d46ab7eac7e68c9f91d3462bc50cb31d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '一汽凌河'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/4edb39fcf613344f6e5ab376029d6a70~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '英飒'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/2e2c66e88ea7544b3b79155649690a8a~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'YAMAHA'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/13bb70839349ff77962f808d24991118~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '游侠'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/6e89c5c8221063abd8d11b355f9bb1d4~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '易电易行'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/79209f27bb82fd850f4f13b450240582~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '悠跑科技'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/76de6c8acd11a2f8014b2e0f5c297108~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '悠宝利'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/97344e8747e646f89175e54cc938265d~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '颐驰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/8fb1e6e0154c488e85aef852cf386e42~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '怡亚通'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/bd5ca3f9e827f85b1c95f73ba4f6fba5~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '越界'
      },
    ],
  },
  {
    initial: 'Z',
    carList: [
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/68a0ff1a38999c31f6339540c78ad8b7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '中兴'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/f9502088eaedabe283b8c6c95fa70aad~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '中华'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/19668cf62bc54accb97358b0ffe6310e~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '中国重汽VGV'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/d5073ea4074a8b5bb418ce5b43537ac7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '知豆'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/5f1cafd288ec6de9594030d191d13bff~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '之诺'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8a48f8b850dd0217d6f44f209cbc5a20~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '智己汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/3369ba238f8be7f09226f8c9c42c6e85~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '正道汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/82c81a84697feb981ad32fcf3a946017~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: 'Zenvo'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/91341852a255e55a7edc52bac044c183~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '众泰'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/e1115f73512643c49dbd8a2492f5ab1c~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '智界'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/08620d0ed10e0ada4559ba6bb4b6be47~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '自游家'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/7c1aa73e7485bb6e76c7ba21143312c7~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '智点汽车'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/e9cb79e37a4f0e699394fba7f32ee64f~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '智行盒子'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/tos-cn-i-dcdx/2c3372c11f804353a721f073fb7054e3~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '中国重汽'
      },
      {
        icon: 'https://p5-auto.dcarimg.com/img/motor-mis-img/8f98e843d20d356e4af032896b52c478~tplv-f042mdwyw7-auto-webp:80:80.image',
        name: '中植汽车'
      },
    ],
  },
]