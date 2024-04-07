function abc(str: string) {
  console.log(str);
  str += str
  abc(str)
}

abc("123")

@Entry
@Component
struct Index {
  build() {
    Column()
  }
}