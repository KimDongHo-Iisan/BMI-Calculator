
let myOptional: String?

myOptional = nil

let text: String = myOptional ?? "I am the default value"

print(text)

// 만약 옵셔널 값이 nil일때 출력할수 있는 기본값을 제공해주는 방법.
//nil이어도 에러가 나지 않게 해줄수 있다.


