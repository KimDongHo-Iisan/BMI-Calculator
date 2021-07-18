//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //슬라이더가 움직일때 값이 변화되는 것을 보여주기 위해 아웃렛을 추가.
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    //BMI 계산을 위해, UISlider를 생성
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //값은 출력이 되지만, 단위가 사라지는 현상이 발생한다. 이를 해결하기 위해.
        let height = (String(format: "%.2f", sender.value))
        heightLabel.text = "\(height)m" //문자열 보간을 이용해서 단위도 나타나게 만들어준다.
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = (String(format: "%.0f", sender.value))
        weightLabel.text = "\(weight)kg"
    }
    //버튼을 누르면, BMI 결과값이 출력되도록 하는 함수
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        //bmi 값
        let bmi = weight / pow(height, 2) // pow(제곱할 변수, 몇 제곱 할지 수를 입력)
        print(bmi)
        
        let secondVC = SecondViewController() //secondVC로 초기화
        secondVC.bmiValue = String(format:"%.1f",bmi) 
        
        self.present(secondVC, animated: true, completion: nil) //뷰 컨트롤러를 모달 방식으로 제공하는 코드
    }
}

