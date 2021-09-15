//
//  Rectangle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Rectangle: Weightabe, Figure, Comparable {

    var sideA: Double
    var sideB: Double
    var weight: Double
    var description: String {
        "I am a Rectangle and my sides are \(self.sideA) and \(self.sideB). My perimeter is \(self.perimeter)"
    }
    var perimeter: Double {
        return self.sideA + self.sideB
    }
    
    // Имплиментируем comparable
    static func == (lhs: Rectangle, rhs: Rectangle) -> Bool {
        return lhs.perimeter == rhs.perimeter
    }
    
    static func < (lhs: Rectangle, rhs: Rectangle) -> Bool {
        return lhs.perimeter < rhs.perimeter
    }
    
    init(sideA: Double, sideB: Double, weight: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.weight = weight
    }
}
