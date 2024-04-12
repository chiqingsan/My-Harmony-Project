interface Department {
  departmentName: string
  employees?: Employee[]
  children?: Department[]
}


interface Employee {
  username: string
  avatar: ResourceStr
  gender: string
  birth: number
}

const treeData: Department[] = [
  {
    departmentName: '软件开发部',
    // 子部门
    children: [{
      departmentName: '前端',
      children: [
        {
          departmentName: 'IOS',
          employees: [
            {
              username: '张姗',
              avatar: $r('app.media.user_02'),
              gender: '女',
              birth: 1693039237877,
            },
          ]
        },
        {
          departmentName: 'web',
          employees: [
            {
              username: '张杉',
              avatar: $r('app.media.user_03'),
              gender: '女',
              birth: 1693039237877,
            },
            {
              username: '张彡',
              avatar: $r('app.media.user_04'),
              gender: '女',
              birth: 1693039237877,
            },
          ]
        }
      ],
      employees: [
        {
          username: '张珊',
          avatar: $r("app.media.user_0123"),
          gender: '女',
          birth: 1693039237877,
        },
      ]
    }],
  },
  {
    departmentName: '人事部',
    // 当前部门人员
    employees: [
      {
        username: '李思',
        avatar: $r('app.media.user_05'),
        gender: '女',
        birth: 1693039237877,
      },
      {
        username: '王舞',
        avatar: $r('app.media.user_06'),
        gender: '女',
        birth: 1693039237877,
      },
    ],
  },
]

function getEmployeeList(departmentList: Department[]): Employee[] {
  let employeeList: Employee[] = []


  // 补全剩余代码/

  const listOfEmployees = (departmentList: Department[]) => {
    departmentList.forEach((item) => {
      if (item.employees) {
        employeeList.push(...item.employees)
      }
      if (item.children) {
        listOfEmployees(item.children)
      }
    })

  }

  listOfEmployees(departmentList)

  return employeeList
}


@Entry
@Component
struct FormatDate {
  list: Employee[] = getEmployeeList(treeData)

  build() {
    Column() {
      Text('本公司所有员工')
        .titleStyle()
      List({ space: 10 }) {

        ForEach(
          this.list,
          (item: Employee) => {
            ListItem() {
              Row({ space: 10 }) {
                Image(item.avatar)
                  .width(40)
                  .height(40)
                  .borderRadius(20)
                Text(item.username)
                  .fontWeight(900)
                Text(item.birth.toString())
                  .fontWeight(900)
                Text(item.gender)
                  .fontWeight(900)
              }
              .width('100%')
              .justifyContent(FlexAlign.Start)
            }
            .listStyle()
          }
        )

        // ListItem() {
        //   Row({ space: 10 }) {
        //     Image($r('app.media.user_06'))
        //       .width(40)
        //       .height(40)
        //       .borderRadius(20)
        //     Text('Lucy')
        //       .fontWeight(900)
        //     Text('1990-02-02')
        //       .fontWeight(900)
        //     Text('女')
        //       .fontWeight(900)
        //   }
        //   .width('100%')
        //   .justifyContent(FlexAlign.Start)
        // }
        // .listStyle()

      }
      .padding(20)
    }
    .columnStyle()
  }

  @Styles
  columnStyle() {
    .padding(20)
    .backgroundColor('#f6f6f6')
    .height('100%')
  }

  @Styles
  listStyle() {
    .backgroundColor(Color.White)
    .width('100%')
    .padding(10)
    .borderRadius(10)
  }
}

@Extend(Text)
function titleStyle() {
  .width('100%')
  .border({ width: { left: 2 }, color: Color.Red })
  .padding(5)
  .fontWeight(900)
}
