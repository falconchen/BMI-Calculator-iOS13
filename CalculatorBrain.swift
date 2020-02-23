//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Falcon on 2020/2/19.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit
//import Darwin


struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculatorBMI(h height: Float,w weight: Float){
        let bmiValue = weight / pow(height,2)
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: T##UIColor)
        
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        case ..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))

            
        }
        
    }
    
    func getBMIValue() -> String{
        return String(format:"%0.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
}
