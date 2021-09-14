//
//  Circle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Circle: Weightabe, Figure {                // имплементируем протокол кругу
    var radius: Double
    var weight: Double
    var description: String {
        "I am a Circle and my radius is \(radius), my perimeter is \(self.calculatePerimiter())"
    }
    func calculatePerimiter() -> Double {
        return 2.0 * Double.pi * radius
    }
    init(radius: Double, weight: Double) {
        self.radius = radius
        self.weight = weight
    }
}
