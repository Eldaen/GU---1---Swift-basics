//
//  Queue.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 15.09.2021.
//

import Foundation

// Очередь отличается от стека тем, что первый пришедший - первым уходит, так что надо только pop() изменить
struct Queue<T: Figure> {
    
    private var queueLength: Int {
        elements.count
    }
    private var elements: [T] = []           // массив типа Т
    
    func queueLengthReport () -> String {
        return "The current queue is \(queueLength)"
    }
    
    mutating func push(_ element: T) {      // добавляем элемент типа Т
        elements.append(element)
    }
    
    mutating func pop() -> T? {            // извлекаем элемент типа Т
        return elements.removeFirst()       // Не стэк, так что удаляем первый, не последний
    }
    
    mutating func removeHalf() {            // Выкидываем пол очереди, нечего толпиться
        let count = elements.count / 2
        
        while elements.count > count {
            elements.removeLast()
        }
    }
    
    // Метод принимает клоужер и сортирует очередь, возвращает отсортированный массив.
    // Не самый полезные метод, вообще говоря, но любопытный, поразбираться с Comparable
    mutating func SortByPerimeter(function: (Figure, Figure) -> Bool) -> [T] {
        return elements.sorted(by: function)
    }
    
    var totalWeght : Double {             // свойство, отражающее общий вес деталей
        var weight = 0.0
        for element in elements {
            weight += element.weight    // мы можем использовать свойство weight
        }
        return weight
    }
    
    subscript (_ index: Int) -> T? {
        return elements.indices.contains(index) ? elements[index] : nil // indices создаёт список всех индексов и можно там поискать, есть ли такой. Если нет, то вернём nil
    }
}
