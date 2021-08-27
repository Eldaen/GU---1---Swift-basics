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

print(arrayCopy2)
