const reg = /arkts/

const reg2 = new RegExp("arkts")

console.log("res2", reg2.test(" "))

const phone = /^1[3-8][0-9]{9}$/
console.log("phone", phone.test('17688430000'))
const email = /[a-z]+@[a-z]+.com/
console.log("email", email.test('chiqngsan@gmail.com'))
console.log("正则", "chiqingsan@gmai.com".replace(email, "对对对"))


@Entry
@Component
struct Index {
  build() {

  }
}