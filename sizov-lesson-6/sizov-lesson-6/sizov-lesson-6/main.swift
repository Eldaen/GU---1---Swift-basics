//
//  main.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation

// Очередь отличается от стека тем, что первый пришедший - первым уходит, так что надо только pop() изменить
struct Queue<T: Weightabe> {
    
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

var queueCircle = Queue<Circle>()
var queueRectangle = Queue<Rectangle>()

queueRectangle.push(Rectangle(sideA: 10, sideB: 20, weight: 5))
queueRectangle.push(Rectangle(sideA: 2, sideB: 2, weight: 5))
queueRectangle.push(Rectangle(sideA: 10, sideB: 20, weight: 5))
queueRectangle.push(Rectangle(sideA: 2, sideB: 2, weight: 5))
queueRectangle.push(Rectangle(sideA: 10, sideB: 20, weight: 5))
queueRectangle.push(Rectangle(sideA: 2, sideB: 2, weight: 5))


queueCircle.push(Circle(radius: 5, weight: 3))
queueCircle.push(Circle(radius: 5, weight: 3))
queueCircle.push(Circle(radius: 5, weight: 3))
queueCircle.push(Circle(radius: 5, weight: 3))

//Смотрим, сколько сейчас элементов в очереди
print(queueCircle.queueLengthReport())
print(queueRectangle.queueLengthReport())

//Половиним очереди
queueCircle.removeHalf()
queueRectangle.removeHalf()

print("\n")

//Смотрим, сколько сейчас элементов в очереди
print(queueCircle.queueLengthReport())
print(queueRectangle.queueLengthReport())

print("\n")

//Проверяем наш сабскрипт
if let someFigure = queueCircle[1] {
    print(someFigure.description)
} else {
    print("There is no such figure in queue")
}

if let someFigure = queueRectangle[0] {
    print(someFigure.description)
} else {
    print("There is no such figure in queue")
}

if let someFigure = queueRectangle[5] {
    print(someFigure.description)
} else {
    print("There is no such figure in queue")
}
