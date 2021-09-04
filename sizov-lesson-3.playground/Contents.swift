import UIKit


/*
 Делаем две структуры, для легкового авто и грузового
 
 вверху каждой структуры сначала укажем уникальные св-ва, чтобы были, а дальше уже повторяющееся.
 
 */

//Легковое авто
struct lightVehicle {
    
    var aeroSpoiler: Bool
    let panoramicRoof: Bool
    var passangersCount: Int
    
    // дальше повторы
    
    let brand: String
    let dateOfCreation: Date
    var trunkVolume: Int
    var engineState: engineState
    var windowsState: carWindowsState
    
    mutating func doSomething (whatToDo: carActions) {
        switch whatToDo {
        case .startEngine :
            self.engineState = .on
        case .stopEngine :
            self.engineState = .off
        case .openWindows :
            self.windowsState = .open
        case .closeWindows :
            self.windowsState = .closed
        }
    }
}

//Грузовое авто
struct heavyVehicle {
    
    var maxWeight: Int
    var sleepingSpot: Bool
    var gasTankVolume: Int
    
    // дальше повторы
    
    let brand: String
    let dateOfCreation: Date
    var trunkVolume: Int
    var engineState: engineState
    var windowsState: carWindowsState
    
    mutating func doSomething (whatToDo: carActions) {
        switch whatToDo {
        case .startEngine :
            self.engineState = .on
        case .stopEngine :
            self.engineState = .off
        case .openWindows :
            self.windowsState = .open
        case .closeWindows :
            self.windowsState = .closed
        }
    }
}


// Вообще говоря, вариантов с открытостью окон может быть прям много.
enum carWindowsState: String {
    case open = "The windows are shut"
    case closed = "The windows are open"
}

enum engineState: String {
    case off = "The engine is off"
    case on = "The engine is on"
}

enum carActions {
    case startEngine
    case stopEngine
    case openWindows
    case closeWindows
}



