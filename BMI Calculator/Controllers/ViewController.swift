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
        //값은 출력이 되지만, 단위가 사라지는 현상이 발생한다. 이를 해결하기 위해.
        let height = (String(format: "%.2f", sender.value))
        heightLabel.text = "\(height)m" //문자열 보간을 이용해서 단위도 나타나게 만들어준다.
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = (String(format: "%.0f", sender.value))
        weightLabel.text = "\(weight)kg"
    }
}

