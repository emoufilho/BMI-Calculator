//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eduardo Moura on 26/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    @available(iOS 15.0, *)
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
        
        if(bmiValue <= 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.systemCyan)
        }else if (bmiValue <= 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.systemMint)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.systemPink)
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    
}
