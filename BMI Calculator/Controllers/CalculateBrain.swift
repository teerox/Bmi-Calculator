//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by macbook on 3/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain {
    
    
    func getHeigth(recievedHeight:Float) -> String {
          let height = String(format: "%.2f", recievedHeight)
        return height + "m"
    }
    
    func getWeight(recievedWeight:Float) -> String {
        let weight = Int(recievedWeight)
        return String(weight)
    }
    
  
}
