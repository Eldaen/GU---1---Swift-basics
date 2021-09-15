//
//  main.swift
//  sizov-lesson-6
//
//  Created by Денис Сизов on 14.09.2021.
//

import Foundation


var queueCircle = Queue<Circle>()
var queueRectangle = Queue<Rectangle>()

queueRectangle.push(Rectangle(sideA: 15, sideB: 12, weight: 5))
queueRectangle.push(Rectangle(sideA: 2, sideB: 1, weight: 5))
queueRectangle.push(Rectangle(sideA: 11, sideB: 21, weight: 5))
queueRectangle.push(Rectangle(sideA: 14, sideB: 3, weight: 5))
queueRectangle.push(Rectangle(sideA: 12, sideB: 22, weight: 5))
queueRectangle.push(Rectangle(sideA: 6, sideB: 4, weight: 5))


queueCircle.push(Circle(radius: 11, weight: 3))
queueCircle.push(Circle(radius: 6, weight: 3))
queueCircle.push(Circle(radius: 8, weight: 3))
queueCircle.push(Circle(radius: 7, weight: 3))

print("\n")

var sortedCircle = queueCircle.SortByPerimeter(function: { $0 < $1 } )
var sortedRectangle = queueRectangle.SortByPerimeter(function: { $0 > $1 })

print(sortedCircle, "\n\n")
print(sortedRectangle, "\n\n")

print("\n")

//Смотрим, сколько сейчас элементов в очереди
print(queueCircle.queueLengthReport())
print(queueRectangle.queueLengthReport())

//Половиним очереди
queueCircle.removeHalf()
queueRectangle.removeHalf()

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
