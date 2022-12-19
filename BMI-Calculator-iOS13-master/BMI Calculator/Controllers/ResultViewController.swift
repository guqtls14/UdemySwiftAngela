//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 김신협 on 2022/12/20.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    

}
