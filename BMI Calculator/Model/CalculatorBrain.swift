//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dongho kim on 2021/07/19.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float? //값이 존재하지 않을 가능성이 있기 때문에 옵셔널을 사용해야하는데, 이렇게 되면 bmi값을 출력할때 nil값이 나올 가능성이 있어서 에러가 발생함.

    //bmivalue는 현재 String으로 받고 있기 때문에 리턴값을 String으로 설정.
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.lf", bmi)//bmi값을 소수점 1번째자리까지 출력하도록 함.
        return bmiTo1DecimalPlace
    }
    
    //BMI 계산을 하기 위한 함수.-> 구조체 내에서는 불변성을 없애는 메소드를 만들었을때 mutaing을 이용해서 불변성을 없애줘야 이 메소드를 사용할수 있다.
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / (height * height)
    }


}

