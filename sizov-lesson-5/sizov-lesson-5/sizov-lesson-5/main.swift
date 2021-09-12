//
//  main.swift
//  sizov-lesson-5
//
//  Created by Денис Сизов on 09.09.2021.
//

import Foundation

// Не знаю в какой файл лучше положить extension, как думаете?
extension Car {
    
    mutating func useWindows(action: Vehicle.carWindowsState) {
        switch action {
        case .open:
            self.windowsState = .open
        case .closed:
            self.windowsState = .closed
        }
    }
    
    mutating func useEngine(action: Vehicle.engineState) {
        switch action {
        case .on:
            self.engine = .on
        case .off:
            self.engine = .off
        }
    }
}


extension ConsolePrintable {
    func printDescription() {
        print(description)
    }
}


// Вот тут уже создаём классы и применяем им всякие дейсвтия

// для времени
let formatter = DateFormatter()
formatter.dateFormat = "dd/mm/yyyy HH:mm"
var truckDate = formatter.date(from: "30/10/2020 10:00") ?? Date.init()
var sportCarDate = formatter.date(from: "30/5/2021 10:00") ?? Date.init()
//---


let truck = TrunkCar(brand: "CyberTruck", dateOfCreation: truckDate, trunkVolume: 1500, maxWeight: 2000, sleepingSpot: false, gasTankVolume: 0, trunkBackCopacity: 10000)

let sportCar = SportCar(brand: "Porsche", dateOfCreation: sportCarDate, trunkVolume: 100, panoramicRoof: false, aeroSpoiler: true, passangersCount: 2)

sportCar.doSomething(whatToDo: Vehicle.carActions.openWindows)
sportCar.doSomething(whatToDo: Vehicle.carActions.startEngine)
sportCar.doSomething(whatToDo: Vehicle.carActions.raiseTheSpoiler)

truck.doSomething(whatToDo: .startEngine)
truck.doSomething(whatToDo: .stopEngine)
truck.doSomething(whatToDo: .emptyTheBack)
truck.addCargo(howMuch: 1000)

print("\n\n\n")

// Демонстрация consolePrintable протокола
print(truck, "\n")
print(sportCar, "\n")
