//
//  Rectangle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Rectangle: Weightabe, Figure {       // имплементируем протокол прямоугольнику
    var sideA: Double
    var sideB: Double
    var weight: Double
    var description: String {
        "I am a Rectangle and my sides are \(self.sideA) and \(self.sideB). My perimeter is \(self.calculatePerimiter())"
    }
    
    func calculatePerimiter() -> Double {
        return sideA + sideB
    }
    init(sideA: Double, sideB: Double, weight: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.weight = weight
    }
}
