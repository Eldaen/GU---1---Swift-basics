//
//  Car.swift
//  sizov-lesson-5
//
//  Created by Денис Сизов on 09.09.2021.
//

import Foundation

protocol Car {
    var brand: String { get }
    var dateOfCreation: Date { get }
    var trunkVolume: Int { get }
    var engine: Vehicle.engineState { get set }
    var windowsState: Vehicle.carWindowsState { get set }
    
    func doSomething(whatToDo: Vehicle.carActions)
    
}
