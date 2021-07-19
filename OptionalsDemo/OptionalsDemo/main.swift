//만약 옵셔널 값이 nil이 아니면 safeOptional 값을 출력해라.
/* if let safeOptional = optional {
            safeOptional
 */

let myOptioanl: String?

myOptioanl = nil

if let safeOptional = myOptioanl {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print("myOptioanl was found to be nil")
}

// 이 방법은 만약 옵셔널값이 nil이면 출력되는 값이 없다는 것이 단점.
