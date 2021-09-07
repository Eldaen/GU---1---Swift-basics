//
//  Vehicle.swift
//  sizov-lesson-4
//
//  Created by Денис Сизов on 07.09.2021.
//

import Foundation

class Car {
    
    let brand: String
    let dateOfCreation: Date // Попробовать использовать Date, можно было и String
    var trunkVolume: Int
    var engineState: engineState
    var windowsState: carWindowsState
    
    func doSomething (whatToDo: carActions) {
        switch whatToDo {
        case .startEngine :
            self.engineState = .on
            print("Engine is ON")
        case .stopEngine :
            self.engineState = .off
            print("Engine is OFF")
        case .openWindows :
            self.windowsState = .open
            print("Windows are OPEN")
        case .closeWindows :
            self.windowsState = .closed
            print("Windows are CLOSED")
        }
    }
    
    init(brand: String, dateOfCreation: Date, trunkVolume: Int) {
        self.brand = brand
        self.dateOfCreation = dateOfCreation
        self.trunkVolume = trunkVolume
        
        engineState = .off
        windowsState = .closed
    }
}
