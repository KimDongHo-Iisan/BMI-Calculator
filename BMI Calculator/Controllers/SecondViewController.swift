//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Dongho kim on 2021/07/18.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red //UIColor.red를 생략해서 사용할수 있음.
        
        let label = UILabel() // label 초기화
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50) // 좌표 0,0에 넓이 100 높이 50인 사각형을 형성
        view.addSubview(label) // view를 생성하는 코드-> (UIView)를 넣어야하는 자리인데, label이 들어갈수 있는 이유-> UILabel은 UIView를 상속받는 클래스이므로, UIView의 속성을 모두 사용할수 있기 때문에, label이 들어와도 에러가 발생하지 않는 거ㅏㅅ이다. 
    }
}
