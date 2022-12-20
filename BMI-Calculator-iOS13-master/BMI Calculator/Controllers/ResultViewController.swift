//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 김신협 on 2022/12/20.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
// destination으로써 데이터를 입력받는 viewcontroller
//    souce로부터 입력받을 데이터를 여기서 선언을함, 이때 destination이 먼저 초기화 되므로 데이터가오기먼 먼저 초기화되면 에러가나기에 옵셔널타입을 사용
    var bmiValue: String?
    
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    

}
