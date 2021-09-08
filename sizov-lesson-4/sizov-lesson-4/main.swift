//
//  main.swift
//  sizov-lesson-4
//
//  Created by Денис Сизов on 07.09.2021.
//

import Foundation


let formatter = DateFormatter()
formatter.dateFormat = "dd/mm/yyyy HH:mm"
var truckDate = formatter.date(from: "30/10/2020 10:00") ?? Date.init()
var sportCarDate = formatter.date(from: "30/5/2021 10:00") ?? Date.init()


var truck = TrunkCar(brand: "CyberTruck", dateOfCreation: truckDate, trunkVolume: 1500, maxWeight: 2000, sleepingSpot: false, gasTankVolume: 0, trunkBackCopacity: 10000)
var sportCar = SportCar(brand: "Porsche", dateOfCreation: sportCarDate, trunkVolume: 100, panoramicRoof: false, aeroSpoiler: true, passangersCount: 2)

sportCar.doSomething(whatToDo: Car.carActions.openWindows)
sportCar.doSomething(whatToDo: Car.carActions.startEngine)
sportCar.doSomething(whatToDo: Car.carActions.raiseTheSpoiler)

truck.doSomething(whatToDo: .startEngine)
truck.doSomething(whatToDo: .stopEngine)
truck.doSomething(whatToDo: .emptyTheBack)
truck.addCargo(howMuch: 1000)

print(truck.storedCargo)
print(truck.copacityRemaining)
