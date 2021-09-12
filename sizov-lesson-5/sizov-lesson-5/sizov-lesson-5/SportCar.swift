//
//  SportCar.swift
//  sizov-lesson-5
//
//  Created by Денис Сизов on 09.09.2021.
//

import Foundation

class SportCar: Vehicle, Car { // сначала суперкласс, потом протоколы
    
    
    //уникальное для SportCar
    var aeroSpoiler: Bool
    let panoramicRoof: Bool
    var passangersCount: Int
    var aeroSpoilerState: spoilerState
    
    override var description: String {
        return super.description + "\nAlso, my passangers count is \(passangersCount). \(aeroSpoilerState.rawValue)"
    }
    
    init (brand: String, dateOfCreation: Date, trunkVolume: Int, panoramicRoof: Bool, aeroSpoiler: Bool, passangersCount: Int) {

        self.panoramicRoof = panoramicRoof
        self.aeroSpoiler = aeroSpoiler
        self.passangersCount = passangersCount
        self.aeroSpoilerState = .lowered

        aeroSpoilerState = .lowered

    super.init(brand: brand, dateOfCreation: dateOfCreation, trunkVolume: trunkVolume)
    }
}
