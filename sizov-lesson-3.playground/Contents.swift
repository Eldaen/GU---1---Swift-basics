import UIKit


/*
 Делаем две структуры, для легкового авто и грузового
 
 вверху каждой структуры сначала укажем уникальные св-ва, чтобы были, а дальше уже повторяющееся.
 
 */

//Легковое авто
struct LightVehicle {
    
    var aeroSpoiler: Bool
    let panoramicRoof: Bool
    var passangersCount: Int
    
    // дальше повторы
    
    let brand: String
    let dateOfCreation: Date // Попробовать использовать Date, можно было и String
    var trunkVolume: Int
    var engineState: engineState
    var windowsState: carWindowsState
    
    mutating func doSomething (whatToDo: carActions) {
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
    
    init(brand: String, dateOfCreation: Date, panoramicRoof: Bool, aeroSpoiler: Bool, passangersCount: Int, trunkVolume: Int) {
        self.brand = brand
        self.dateOfCreation = dateOfCreation
        self.panoramicRoof = panoramicRoof
        self.aeroSpoiler = aeroSpoiler
        self.passangersCount = passangersCount
        self.trunkVolume = trunkVolume
        
        engineState = .off
        windowsState = .closed
    }
}

//Грузовое авто
struct HeavyVehicle {
    
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
    
    init(brand: String, dateOfCreation: Date, maxWeight: Int, sleepingSpot: Bool, gasTankVolume: Int, trunkVolume: Int) {
        self.brand = brand
        self.dateOfCreation = dateOfCreation
        self.maxWeight = maxWeight
        self.sleepingSpot = sleepingSpot
        self.gasTankVolume = gasTankVolume
        self.trunkVolume = trunkVolume
        
        engineState = .off
        windowsState = .closed
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

// Учимся пользоваться датой, один из вариантов. Если дата почему-то не прошла, то пусть будет текущая
let formatter = DateFormatter()
formatter.dateFormat = "dd/mm/yyyy HH:mm"
var truckDate = formatter.date(from: "30/10/2020 10:00") ?? Date.init()
var sportCarDate = formatter.date(from: "30/5/2021 10:00") ?? Date.init()

var truck = HeavyVehicle(brand: "CyberTruck", dateOfCreation: truckDate, maxWeight: 2000, sleepingSpot: false, gasTankVolume: 0, trunkVolume: 1500)
var sportCar = LightVehicle(brand: "Porsche", dateOfCreation: sportCarDate, panoramicRoof: false, aeroSpoiler: true, passangersCount: 2, trunkVolume: 100)

sportCar.doSomething(whatToDo: .openWindows)
sportCar.doSomething(whatToDo: .startEngine)

truck.doSomething(whatToDo: .startEngine)
truck.doSomething(whatToDo: .stopEngine)


// Погуглил как красивее вывести это всё: нужно создавать расширение и протокол, чтобы можно было for in по св-вам делать, решил не трогать в ДЗ.
print(truck)
print(sportCar)
