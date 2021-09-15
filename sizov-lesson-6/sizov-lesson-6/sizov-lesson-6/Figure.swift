//
//  FigureProtocol.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

class Figure: Comparable, CustomStringPrintable {

    var perimeter: Double
    var weight: Double
    var description = ""
    
    func printDescription() {
        print(description)
    }
    
    // Имплиментируем comparable
    static func == (lhs: Figure, rhs: Figure) -> Bool {
        return lhs.perimeter == rhs.perimeter
    }
    
    static func < (lhs: Figure, rhs: Figure) -> Bool {
        return lhs.perimeter < rhs.perimeter
    }
    
    init(perimeter: Double, weight: Double) {
        self.perimeter = perimeter
        self.weight = weight
    }
}
