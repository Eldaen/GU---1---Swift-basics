import UIKit

/*
 Задание 1
 
 Написать функцию, которая определяет, четное число или нет.
 */
func isEven (_ x: Int) -> Bool {
    return (x % 2) == 0 && (x != 0) ? true : false // если делится на 2 без остатка и не 0, то чётное
}


/*
 Задание 2
 
 Написать функцию, которая определяет, делится ли число без остатка на 3.
 */
func modThree (_ x: Int) -> Bool {
    return x % 3 == 0 && (x != 0) ? true : false // ну, тоже самое что и с чётным
}


/*
 Задание 3
 
 Создать возрастающий массив из 100 чисел.
 */
var x: [Int] = []

for i in 0..<100 {
    x.append(i)
}

print(x, "\n\n\n\n")

// создадим пару копий массива для дальнейших тестов
var arrayCopy = x
var arrayCopy2 = x


/*
 Задание 4
 
 Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
 
 Наделал аж 3 варианта, т.к. с первого наскока не смог сделать через for in цикл и remove, в итоге сделал через while цикл и ещё вариантов
 */


// Первый вариант через создание нового массива и добавление правильных элементов

func removeModTwo (_ array: [Int]) -> [Int] {
    var filteredArray: [Int] = []
    
    for i in array {
        if !isEven(i) { // если нечётное, то добавляем в отфильтрованный массив
            filteredArray.append(i)
        }
    }
    
    return filteredArray
}

func filterModThree(_ array: [Int]) -> [Int] {
    var filteredArray: [Int] = []
    
    for i in array {
        if modThree(i) { // если делится на 3 без остатка, то добавляем в отфильтрованный массив
            filteredArray.append(i)
        }
    }
    
    return filteredArray
}


x = removeModTwo(x)
x = filterModThree(x)

print(x, "\n\n\n")


// Второй вариант через фильтр

var newArray = arrayCopy.filter { $0 % 2 != 0 }
newArray = newArray.filter { $0 % 3 == 0 }


print(newArray, "\n\n\n")


// третий вариант через remove

var loopCounter = 0

// Если чётное, то убираем из массива. Цикл заканчивается, когда loopCounter доходит до конца массива.
while loopCounter < arrayCopy2.count {
    if isEven(arrayCopy2[loopCounter]) {
        arrayCopy2.remove(at: loopCounter)
    } else {
        loopCounter += 1 // Увеличиваем, только если ничего не удаляли
    }
}

loopCounter = 0

while loopCounter < arrayCopy2.count {
    if !modThree(arrayCopy2[loopCounter]) {
        arrayCopy2.remove(at: loopCounter)
    } else {
        loopCounter += 1
    }
}

print(arrayCopy2, "\n\n\n")


/*
 Задание 5
 
 * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
 
 В задании нет подробностей, что там за массив итд, придётся делать универсального солдата. Даже если в массиве какие-то странные числа, то пусть считает сумму двух последних и дальше от этого пляшет.
 */

func addFibonacci (_ array: inout [Int], howMany count: Int) {
    switch array.count {
    case 0:
        array += [0, 1] // если пришёл пустой массив, то начнём как нормальный ряд Фибоначчи
    case 1:
        array.append(array[0]) // если элемент в массиве один, то предыдущий равен 0.
    default:
        break
    }
    
    for _ in 0..<count {
        let newVal = array[array.endIndex - 2] + array[array.endIndex-1] // в 2 строчки как-то красивее, чем сразу аппендить. Внезапно узнал, что endIndex почему-то на 1 больше, чем реальный конец О_о
        array.append(newVal)
    }
}

var fibonacci: [Int] = []
addFibonacci(&fibonacci, howMany: 50)
print(fibonacci, "\n\n\n")

var fibonacci2: [Int] = [10, 31]
addFibonacci(&fibonacci2, howMany: 50)
print(fibonacci2, "\n\n\n")


/*
 Задание 6
 
 Заполнить массив элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n (пусть будет 100), следуя методу Эратосфена
 */
var arr: [Int] = []

for i in 2..<100 { // Создали массив от 2 до 99
    arr.append(i)
}
var p = 2

while p < 100 {
    for i in stride(from: p, to: 100, by: p) { //Крутим цикл от простого числа и до конца массива с шагом в это простое число для поиска кратных
        if i == p { // само простое число занулять не нужно
            continue
        }
        if let indexToRemove = arr.lastIndex(of: i) { //если в массиве есть число кратное p, то зануляем
            arr[indexToRemove] = 0
        }
    }
    
    repeat { // ищем следующее простое число в массиве для нового цикла зануления кратных
        p += 1
        if arr.contains(p) {
            break
        }
    } while p < 100
}

// Удаляем нули из массива, хоть и не просят в задании  
for _ in arr {
    if let indexToRemove = arr.lastIndex(of: 0) {
        arr.remove(at: indexToRemove)
    }
}

print("Выводим простые числа от 2 до 100")
print(arr)


