//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var myHeightSlider: UISlider!
    
    @IBOutlet weak var myWeightSlider: UISlider!
    
    var bmi:Float?
    var color:UIColor?
    var advice:String?
    
    var calculateBmi = CalculateBrain()
    var bmiShow = BMI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = calculateBmi.getHeigth(recievedHeight: sender.value)
        heightLabel.text = height
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = calculateBmi.getWeight(recievedWeight: sender.value)
        weightLabel.text = weight
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = bmi
            destinationVC.bmiColor = color
            destinationVC.bmiMainAdvice = advice
            
        }
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmi = bmiShow.calculate(heightRecieved: myHeightSlider.value, weightRecieved:myWeightSlider.value)
        
        let getColor = bmiShow.geColor(value: bmi ?? 0.0)
        let getAdvice = bmiShow.getAdvice(value: bmiShow.getAdv(value: bmi!))
        
        color = getColor
        advice = getAdvice
        
        
        print(color!)

  self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
}

