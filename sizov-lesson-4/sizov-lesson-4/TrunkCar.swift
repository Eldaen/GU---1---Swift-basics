//
//  TrunkCar.swift
//  sizov-lesson-4
//
//  Created by Денис Сизов on 07.09.2021.
//

import Foundation

class TrunkCar: Car {
    
    var maxWeight: Int
    var sleepingSpot: Bool
    var gasTankVolume: Int
    
    // TODO: Добавить доп. варианты действий для doSomething
    
    init (brand: String, dateOfCreation: Date, trunkVolume: Int, maxWeight: Int, sleepingSpot: Bool, gasTankVolume: Int) {
        
        self.maxWeight = maxWeight
        self.sleepingSpot = sleepingSpot
        self.gasTankVolume = gasTankVolume
        
        super.init(brand: brand, dateOfCreation: dateOfCreation, trunkVolume: trunkVolume)
    }
}
