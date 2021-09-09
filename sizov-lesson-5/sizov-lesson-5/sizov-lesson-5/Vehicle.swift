//
//  Vehicle.swift
//  sizov-lesson-5
//
//  Created by Денис Сизов on 09.09.2021.
//

import Foundation

class Vehicle: ConsolePrintable {

    enum carWindowsState: String {
        case open = "The windows are shut"
        case closed = "The windows are open"
    }

    enum engineState: String {
        case off = "The engine is off"
        case on = "The engine is on"
    }

    enum spoilerState: String {
        case risen = "The spoiler is up"
        case lowered = "The spoiler is down"
    }

    enum carActions {
        case startEngine
        case stopEngine
        case openWindows
        case closeWindows
        case raiseTheSpoiler
        case lowerTheSpoiler
        case emptyTheBack
    }

    let brand: String
    let dateOfCreation: Date
    var trunkVolume: Int
    var engine: engineState
    var windowsState: carWindowsState
    
    var description: String {
        return "I am the \(brand) car, created at \(dateOfCreation). \(engine.rawValue)."
    }

    func doSomething (whatToDo: carActions) {
        switch whatToDo {
        case .startEngine :
            self.engine = .on
            print("Engine is ON")
        case .stopEngine :
            self.engine = .off
            print("Engine is OFF")
        case .openWindows :
            self.windowsState = .open
            print("Windows are OPEN")
        case .closeWindows :
            self.windowsState = .closed
            print("Windows are CLOSED")
        case .raiseTheSpoiler:
            break
        case .lowerTheSpoiler:
            break // А как лучше в такой ситуации сделать? Когда перечисление должно быть полным в базовом классе, но часть его относится к потомкам.
        case .emptyTheBack:
            break
        }
    }

    init(brand: String, dateOfCreation: Date, trunkVolume: Int) {
        self.brand = brand
        self.dateOfCreation = dateOfCreation
        self.trunkVolume = trunkVolume

        self.engine = .off
        self.windowsState = .closed
    }
}
