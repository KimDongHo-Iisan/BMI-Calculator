//강제적 언래핑

let myOptional: String?
myOptional = "Angla"

let text: String = myOptional!

// 컴퓨터에게 이 변수에는 무조건 nil값이 없다고 확신시켜주는 방법. 이 방법에는 단점이 있는 것이, optional이 nil인것을 개발자가 캐치하지 못하면 에러가 발생함.

