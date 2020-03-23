//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by macbook on 3/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue:Float?
    var bmiColor:UIColor?
    var bmiMainAdvice:String?
    
    @IBOutlet weak var bmiAdvice: UILabel!
    @IBOutlet weak var bmiResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bmiVal = String(format: "%.1f", bmiValue ?? "0.0")

       bmiResult.text = bmiVal
        bmiAdvice.text = bmiMainAdvice
        view.backgroundColor = bmiColor
        
    }


    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
