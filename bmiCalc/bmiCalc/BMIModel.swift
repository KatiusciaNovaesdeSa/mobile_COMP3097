//
//  BMIModel.swift
//  bmiCalc
//
//  Created by Owner on 2020-02-07.
//  Copyright © 2020 Owner. All rights reserved.
//

import Foundation

class BMIModel {
    var height: Double
    var weight: Double
    
    init (height:Double, weight:Double){
        self.height=height
        self.weight=weight
    }
    
    func bmi() ->Double {
        return weight/(height*height)
    }
    
}
