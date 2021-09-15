//
//  Circle.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Circle: Weightabe, Figure, Comparable {                // имплементируем протокол кругу
    var radius: Double
    var weight: Double
    var description: String {
        "I am a Circle and my radius is \(radius), my perimeter is \(self.perimeter)"
    }
    var perimeter: Double {
        return 2.0 * Double.pi * radius
    }
    
    // Имплиментируем comparable
    static func == (lhs: Circle, rhs: Circle) -> Bool {
        return lhs.perimeter == rhs.perimeter
    }
    
    static func < (lhs: Circle, rhs: Circle) -> Bool {
        return lhs.perimeter < rhs.perimeter
    }

    init(radius: Double, weight: Double) {
        self.radius = radius
        self.weight = weight
    }
}
