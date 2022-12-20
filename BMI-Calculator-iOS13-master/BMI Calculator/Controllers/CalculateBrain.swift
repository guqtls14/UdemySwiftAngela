//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by 김신협 on 2022/12/20.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float,weight:Float) {
        let bmiValue = weight / (height * height)
      
        if bmiValue < 18.5 {
//            print("under")
            bmi = BMI(value: bmiValue, advise: "Eat more pies", color:UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advise: "good", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advise: "eat less please", color: UIColor.red)
        }
        

    }
    
//    func getBmiValue() -> String {
//        if let safeBMI = bmi {
//            let bmiToDecimalPlace = String(format: "%.1f", safeBMI)
//            return bmiToDecimalPlace
//        } else {
//            return "0.0"
//        }
//    }
    func getBmiValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
        
    }
    
    func getAdvice() -> String{

        return bmi?.advise ?? "NO advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
