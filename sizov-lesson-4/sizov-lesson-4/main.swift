//
//  main.swift
//  sizov-lesson-4
//
//  Created by Денис Сизов on 07.09.2021.
//

import Foundation

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

