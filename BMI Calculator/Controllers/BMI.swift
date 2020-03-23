//
//  BMI.swift
//  BMI Calculator
//
//  Created by macbook on 3/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI {
    var bmiColor:String?
    var bmiAdvice:String?
    var bmiValue:Float?
    
    mutating func calculate(heightRecieved:Float, weightRecieved:Float) -> Float {
          let height = heightRecieved
          let weight = weightRecieved
              
              let bmiCalculate = weight/(height * height)
          print(bmiCalculate);
              bmiValue = bmiCalculate
        return bmiValue ?? 0.0
      }
    
    
    func geColor(value:Float)-> UIColor{
         if(value > 24.9){
             return .red
         }else if(value > 18.5 && value < 24.9){
             return .green
         }else{
             return .yellow
         }
         
     }
    
    
    func getAdv(value:Float)->String{
        if(value > 24.9){
            return "OverWeight"
        }else if(value > 18.5 && value < 24.9){
           return "Normal"
        }else{
            return "UnderWeight"
        }
        
    }
    
    func getAdvice(value:String)->String{
        if(value == "OverWeight"){
            return "Stop Eating Candies You Overweight"
        }else if(value == "Normal"){
            return "You Very Healthy"
        }else{
              return "Eat more Candies You Underweight"
        }
    }
}
