//
//  Rectangle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Rectangle: Weightabe {       // имплементируем протокол прямоугольнику
    var sideA: Double
    var sideB: Double
    var weight: Double
    func calculatePerimiter() -> Double {
        return sideA + sideB
    }
    init(sideA: Double, sideB: Double, weight: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.weight = weight
    }
}
