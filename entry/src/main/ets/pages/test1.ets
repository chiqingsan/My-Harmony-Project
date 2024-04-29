interface Person {
  name: string
  pet: Animal
}

interface Animal {
  name: string
  color: string
}

@Entry
@Component
struct Index {
  @State p: Person = {
    name: 'jack',
    pet: {
      name: '小黑',
      color: '橘黄色'
    }
  }
  @Provide p2: Person = {
    name: 'rose',
    pet: {
      name: '小白',
      color: '白色'
    }
  }

  build() {
    Column() {
      Text(JSON.stringify(this.p))
      Text(JSON.stringify(this.p2))
      Button('按钮 1')
        .onClick(() => {
          this.p.pet.name = '阿黄'
        })
      Com({ pProp: this.p, pLink: this.p })

    }
  }
}

@Component
struct Com {
  @Prop pProp: Person
  @Link pLink: Person
  @Consume p2: Person

  build() {
    Column() {
      Button('按钮 2')
        .onClick(() => {
          this.pProp.pet = {
            name: '柯基',
            color: '黄色'
          }
        })
      Button('按钮 3')
        .onClick(() => {
          this.pLink.pet = {
            name: '哈士奇',
            color: '黑白相间'
          }
        })
      Button('按钮 4')
        .onClick(() => {
          this.p2.pet = {
            name: '柴犬',
            color: '土黄色'
          }
        })

    }
  }
}