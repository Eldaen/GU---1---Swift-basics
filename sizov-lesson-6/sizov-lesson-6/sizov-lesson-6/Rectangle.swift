//
//  Rectangle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Rectangle: Figure  {

    var sideA: Double
    var sideB: Double
    
    override var description: String {
        get {
            return String(format: "I am a Rectangle and my sides are %.0f and %.0f. My perimeter is %.2f \n", self.sideA, self.sideB, self.perimeter)
        }
        set {
            self.description = newValue
        }

    }
    

    
    init(sideA: Double, sideB: Double, weight: Double) {
        self.sideA = sideA
        self.sideB = sideB
        
        super.init(perimeter: self.sideA + self.sideB, weight: weight)
    }
}
