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
            return "I am a Rectangle and my sides are \(self.sideA) and \(self.sideB). My perimeter is \(self.perimeter)"
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
