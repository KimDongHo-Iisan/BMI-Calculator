
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method")
        
    }
}

let myOptioanl: MyOptional? //구조체에 값이 있는지 확신하지 못해서 옵셔널을 사용할때,

myOptioanl = nil
print(myOptioanl?.property)

// 값이 아닌 구조체나 클래스일때 ?를 붙이면 구조체의 속성에 접근할수 있다.
