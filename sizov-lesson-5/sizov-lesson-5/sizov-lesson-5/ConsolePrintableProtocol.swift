//
//  ConsolePrintableProtocol.swift
//  sizov-lesson-5
//
//  Created by Денис Сизов on 09.09.2021.
//

import Foundation

protocol ConsolePrintable: CustomStringConvertible{ // наш протокол наследует другой протокол
    func printDescription()
}
