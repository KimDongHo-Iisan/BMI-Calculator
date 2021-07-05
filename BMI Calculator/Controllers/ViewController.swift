//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value)) // 소숫점 2자리까지 출력하게 하는 코드.
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(Int(sender.value)) // 몸무게는 소숫점까지 필요하지 않기때문에 INT로 변형해주어도 된다.
    }
}

