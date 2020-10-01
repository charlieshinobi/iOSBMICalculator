//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Charlie Ramirez on 30/09/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI? //optional struct model
    
    func getBMIValue() -> String {
        let bmiFormated = String(format: "%.1f", bmi?.value ?? 0.0) //si bmi no tiene ningun valor enviara 0.0
            return bmiFormated
    }
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Must practice"
    }
    
}
