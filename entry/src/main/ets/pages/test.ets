interface OBJ {
  name: string
  num: number
}

let obj: OBJ[] = Array.from({ length: 30 })

function getRandomOBJ(obj: OBJ[]) {
  obj.forEach((item, index) => {
    obj[index] = {
      name: Math.floor(Math.random() * 1000 + 1000).toString(),
      num: Math.floor(Math.random() * 100)
    }
  })
  // console.log("obj", JSON.stringify(obj))
  return obj
}

obj = getRandomOBJ(obj)

console.log('', JSON.stringify(obj))

@Entry
@Component
struct Index {
  build() {

  }
}