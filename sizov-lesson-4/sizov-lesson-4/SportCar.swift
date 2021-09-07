//
//  SportCar.swift
//  sizov-lesson-4
//
//  Created by Денис Сизов on 07.09.2021.
//

import Foundation

class SportCar: Car {
    
    var aeroSpoiler: Bool
    let panoramicRoof: Bool
    var passangersCount: Int
    
    // TODO: Добавить доп. варианты действий для doSomething
    
    init (brand: String, dateOfCreation: Date, trunkVolume: Int, panoramicRoof: Bool, aeroSpoiler: Bool, passangersCount: Int) {
        
        self.panoramicRoof = panoramicRoof
        self.aeroSpoiler = aeroSpoiler
        self.passangersCount = passangersCount
        
        super.init(brand: brand, dateOfCreation: dateOfCreation, trunkVolume: trunkVolume)
    }
}
