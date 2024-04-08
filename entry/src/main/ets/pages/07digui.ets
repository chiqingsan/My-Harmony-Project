function add(params: number) {
  let sum: number = 0
  if (params) {
    sum = params + add(params - 1)
  }
  return sum
}

console.log(`${add(100)}`);

@Entry
@Component
struct Index {
  build() {

  }
}