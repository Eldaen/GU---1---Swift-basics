//
//  Computer.swift
//  sizov-lesson-7
//
//  Created by Денис Сизов on 20.09.2021.
//

import Foundation

class Computer {
    
    enum computerErrors: Error {
        case noPower
        case incomplete
    }
    
    enum electricityState {
        case on, off
    }
    
    var videoCard: String?
    var keyboard: String?
    var mouse: String?
    var electricity: electricityState
    
    func switchOn() throws {
        guard electricity == .off else {
            throw computerErrors.noPower
        }
        
        print("PC is ON")
    }
    
    func switchOff() {
        print("PC is OFF")
    }
    
    func playAGame() throws {
        print("Trying to start the game")
        
        guard checkDevices() else {
            throw computerErrors.incomplete
        }
        
        print("The game is running, congrats")
        
    }
    
    private func checkDevices () -> Bool {
        if mouse == nil || keyboard == nil {
            return false
        } else {
            return true
        }
    }
    
    func watchAMovie() {
        
    }
    
    init(videoCard: String, keyboard: String?, mouse: String?, power: electricityState) {
        self.videoCard = videoCard
        self.keyboard = keyboard
        self.mouse = mouse
        self.electricity = power
    }
}
