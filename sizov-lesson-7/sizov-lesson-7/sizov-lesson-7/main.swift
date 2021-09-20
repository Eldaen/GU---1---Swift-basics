//
//  main.swift
//  sizov-lesson-7
//
//  Created by Денис Сизов on 20.09.2021.
//

import Foundation




// Создаём два компьютера: один хороший и один не в комплекте.
let goodComputer = Computer(videoCard: "GTX 3080", keyboard: "Razer", mouse: "Razer", power: .on)
let incompleteComputer = Computer(videoCard: "GTX 3080", keyboard: nil, mouse: nil, power: .off)

// Пусть будет функция, которая тестирует компьютеры
func testTheComputer (_ computer: Computer) throws {
    do {
        try computer.switchOn()
        try computer.playAGame()
    } catch let error {
        throw error
    }
    
    print("Computer \(computer) is working good!")
}

// Выполняем тесты
do {
    try testTheComputer(incompleteComputer)
    try testTheComputer(goodComputer)
} catch Computer.computerErrors.incomplete {
    print("You need a mouse and a keyboard in order to play the games")
} catch Computer.computerErrors.noPower {
    print("Plug your computer IN to start it")
}
