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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = (String(format: "%.2f", sender.value))
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = (String(format: "%.0f", sender.value)) // 위 코드처럼 그냥 이 코드를 사용하는것이 낫다. 몸무게는 소숫점이 필요없으므로, 0f를 쓴다.
    }
}

