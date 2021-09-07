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
    var aeroSpoilerState: spoilerState
    
    override func doSomething(whatToDo: carActions) {
        super.doSomething(whatToDo: whatToDo)
        
        switch whatToDo {
            case .raiseTheSpoiler:
                self.aeroSpoilerState = .risen
            case .lowerTheSpoiler:
                self.aeroSpoilerState = .lowered
        default:
            break
        }
    }
    
    init (brand: String, dateOfCreation: Date, trunkVolume: Int, panoramicRoof: Bool, aeroSpoiler: Bool, passangersCount: Int) {
        
        self.panoramicRoof = panoramicRoof
        self.aeroSpoiler = aeroSpoiler
        self.passangersCount = passangersCount
        
        aeroSpoilerState = .lowered
        
        super.init(brand: brand, dateOfCreation: dateOfCreation, trunkVolume: trunkVolume)
    }
}
