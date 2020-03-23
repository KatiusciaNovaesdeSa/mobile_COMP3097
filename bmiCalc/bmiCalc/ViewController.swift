//
//  ViewController.swift
//  bmiCalc
//
//  Created by Owner on 2020-02-07.
//  Copyright © 2020 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var heightTxtField: UITextField!
    
    @IBOutlet weak var WeightTxtField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func computeBMI(_ sender: Any) {
        let h = Double(heightTxtField.text!)
        let w = Double(WeightTxtField.text!)
        
        let bmiM = BMIModel (height:h!, weight: w!)
        resultLabel.text=String(bmiM.bmi())
           
       }


}

