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

//// Решил сделать вот так: Структура, которая описывает окна в машине и у них есть состояние.
//struct carWindows {
//    var leftFront: carWindowsState = .closed
//    var rightFront: carWindowsState = .closed
//    var leftRear: carWindowsState = .closed
//    var rightRear: carWindowsState = .closed
//
//    mutating func openAllWindows() {
//        self.leftFront = .open
//        self.leftRear = .open
//        self.rightFront = .open
//        self.rightRear = .open
//    }
//
//    mutating func closeAllWindows() {
//        self.leftFront = .closed
//        self.leftRear = .closed
//        self.rightFront = .closed
//        self.rightRear = .closed
//    }
//
//}

//enum carWindowsState {
//    case open
//    case closed
//}

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

