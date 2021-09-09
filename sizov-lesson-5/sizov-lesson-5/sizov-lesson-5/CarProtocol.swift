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
    var engineState: Vehicle.engineState { get set }
    var windowsState: Vehicle.carWindowsState { get set }
    
    func useWindows(action: Vehicle.carWindowsState)
    func useEngine(action: Vehicle.engineState)
    
}

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
            self.engineState = .on
        case .off:
            self.engineState = .off
        }
    }
}
