//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dongho kim on 2021/07/19.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI? // BMI 구조체를 사용
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.lf", bmi?.value ?? 0.0)//bmi값을 소수점 1번째자리까지 출력하도록 함. bmi가 옵셔널이면 기본값으로 0.0을 출력해라.
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice" //구조체나 클래스의 옵셔널을 해결하기 위한 방법을 이용하였다. bmi?.adivce 이로써 bmi. 구조체의 속성들을 사용할수 있다. 옵셔널이 아닌 경우에 
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        //bmi 값에 따른 출력들
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    
}

