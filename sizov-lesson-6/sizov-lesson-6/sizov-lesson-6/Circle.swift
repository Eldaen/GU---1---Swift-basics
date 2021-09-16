//
//  Circle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Circle: Figure {
    
    var radius: Double
    
    override var description: String {
        get {
            return String(format: "I am a Circle and my radius is %.f, my perimeter is %.2f\n", self.radius, self.perimeter)
        }
        set {
            self.description = newValue
        }
        
    }
    

    init(radius: Double, weight: Double) {
        self.radius = radius
        
        super.init(perimeter: 2.0 * Double.pi * radius, weight: weight)
    }
}
