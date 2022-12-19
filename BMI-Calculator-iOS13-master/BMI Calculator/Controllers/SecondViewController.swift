//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 김신협 on 2022/12/19.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bimValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.brown
        let label = UILabel()
        label.text = bimValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
