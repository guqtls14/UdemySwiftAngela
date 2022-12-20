//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
//    var bmiValue = "0.0"
    
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
//        var BMI = weight / pow(height, 2)
//        bmiValue = String(format: "%.1f", BMI)
        
//        segue 객체의 코드를 실행하기위한 메서드
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
//    화면을 전환하기전 데이터를 전달하기위해 실행하는 메서드(가장먼저실행)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController // 디운캐스팅
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

