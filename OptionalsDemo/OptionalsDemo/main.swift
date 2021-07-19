// if문을 통해 nil값을 피하는 방법


let myOptional: String?

myOptional = "angle"

if myOptional != nil {
    let text: String = myOptional!
    
} else {
    print("myOptional was found to be nil")
}

//if문을 통해 nil값이 아니라면, 값을 출력하도록 하는것.
//하지만 이 방법은 상당히 코드가 길어지고, 여러개의 값을 출력하고 싶을때도 무조건 강제적 언래핑을 사용해야한다는 불편함이 있다. 
