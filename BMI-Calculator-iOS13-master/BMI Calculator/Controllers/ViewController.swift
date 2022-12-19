//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = round(sender.value*100)/100
        heightLabel.text = "\(String(round(sender.value*100)/100))m"
    }
 
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weight = round(sender.value*100)/100
        weightLabel.text = "\(String(round(sender.value*100)/100))Kg"
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        var BMI = weight / pow(height, 2)
        mainLabel.text = String(BMI)
        print(BMI)
        
//        secondController
        let secondVC = SecondViewController()
        secondVC.bimValue = String(format: "%.1f", BMI)
        
        self.present(secondVC, animated: true,completion:nil)
    }
}

