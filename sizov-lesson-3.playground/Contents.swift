import UIKit


/*
 Делаем две структуры, для легкового авто и грузового
 
 вверху каждой структуры сначала укажем уникальные св-ва, чтобы были, а дальше уже повторяющееся.
 
 */

struct lightVehicle {
    
    var aeroSpoiler: Bool
    let panoramicRoof: Bool
    var passangersCount: Int
    
    // дальше повторы
    
    let brand: String
    let dateOfCreation: Date
    var trunkVolume: Int
    var doorState: carDoorsState
    var windowsState: carWindowsState
}

struct heavyVehicle {
    
    var maxWeight: Int
    var sleepingSpot: Bool
    var gasTankVolume: Int
    
    // дальше повторы
    
}

// Вообще говоря, вариантов с открытостью окон может быть прям много. Ну да ладно, опустим этот момент. TODO: Подумать, как правильно сделать учёт открытость разных дверей и багажника отдельно
enum carDoorsState: String {
    case open = "The car is open"
    case locked = "The doors are locked"
}

// Тут тоже, либо открыто, либо закрыто
enum carWindowsState: String {
    case open = "The windows are shut"
    case closed = "The windows are open"
}
