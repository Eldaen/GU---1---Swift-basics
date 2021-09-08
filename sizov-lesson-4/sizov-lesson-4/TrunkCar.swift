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
    var trunkBackCopacity: Int
    var copacityRemaining: Int
    var storedCargo: Int = 0

    
    override func doSomething(whatToDo: carActions) {
        super.doSomething(whatToDo: whatToDo)
            
        if whatToDo == .emptyTheBack {
            self.storedCargo = 0
            print("The trunk is empty now")
        }
        }
    
    func addCargo (howMuch newCargo: Int) {
        let newCargoWeight = self.storedCargo + newCargo
        if newCargoWeight < self.trunkBackCopacity { // если сумму текущего груза + новый не превышает вместимость, то можно положить
            self.storedCargo += newCargo
            self.copacityRemaining -= newCargo
            print("\(newCargo) of cargo weight were added to the trunk")
        } else {
            print("Can't carry so much weight")
        }
    }
    
    
    init(brand: String, dateOfCreation: Date, trunkVolume: Int, maxWeight: Int, sleepingSpot: Bool, gasTankVolume: Int, trunkBackCopacity: Int) {
        
        self.maxWeight = maxWeight
        self.sleepingSpot = sleepingSpot
        self.gasTankVolume = gasTankVolume
        self.trunkBackCopacity = trunkBackCopacity
        self.copacityRemaining = trunkBackCopacity
        
        super.init(brand: brand, dateOfCreation: dateOfCreation, trunkVolume: trunkVolume)
    }
}

