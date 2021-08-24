import Foundation


/*
 Задание 1
 
 Нужно решить квадратное уравнение вида ax^2 + bx + c = 0 через дискриминант
 */


func quadraticEquationSolver (a: Double, b: Double, c: Double) { // Double чтобы не только целые считало
    
    let discriminant = pow(b, 2) - 4 * a * c
    
    // Не ленимся, проверяем, что пришло квадратное уравнение
    if a == 0 {
        let x = -c / b
        
        print("Уравнение не квадратное и X равен \(x)")
        return
    }
    
    // Если b = 0, то никакой Дискриминант не нужен
    if b == 0 {
        if (-c / a) < 0 { // если тут будет минус, то квадратный корень не взять
            print("Корней нет")
            return
        } else {
            let x = sqrt(-c / a) // решаем уравнение вида ax^2 + c = 0
            
            print("Корнем уравнения \(a)x^2 + \(c) = 0 является: x = \(x)")
            return
        }
    }
    
    // Классическое решение с дискриминантом
    if discriminant > 0 {
        let x1 = (-b + sqrt(discriminant)) / 2 * a
        let x2 = (-b - sqrt(discriminant)) / 2 * a
        
        print("Корнями уравнения \(a)x^2 + \(b)x + \(c) = 0 являются: x1 = \(x1) и x2 = \(x2)")
    } else if discriminant == 0 {
        let x = -b / ( 2 * a )
        
        print("Корнем уравнения \(a)x^2 + \(b)x + \(c) = 0 является: x = \(x)")
    } else {
        print("Корней на множестве действительных чисел нет")
    }
}

print("Когда корень один")
quadraticEquationSolver(a: 3.0, b: -18.0, c: 27.0)

print("\nКогда корня два")
quadraticEquationSolver(a: 1.0, b: -70.0, c: 600.0)

print("\nКогда а = 0")
quadraticEquationSolver(a: 0, b: -18.0, c: 27.0)

print("\nКогда b = 0")
quadraticEquationSolver(a: 3.0, b: 0, c: -27.0)

print("\n\n\n")
// --------------------------------------------


/*
 Задание 2
 
 
 */

func triangleDataCounter (a: Double, b: Double) {
    
    if a == 0 || b == 0 { // ну а вдруг
        print("Это не треугольник вообще, нечего тут считать")
    } else {
        let square = (a * b) / 2
        let hypotenuse = sqrt(pow(a, 2) + pow(b, 2))
        let perimeter = hypotenuse + a + b
        
        print("Площадь треугольника равна \(square), гипотенуза равна \(hypotenuse) и периметр равен \(perimeter)")
    }
}

func trianglePerimeterCounter (a: Double, b: Double) {
    
    
}


print("\nСчитаем треугольник со сторонами 2 и 6")
triangleDataCounter(a: 2, b: 6.0)

print("\nСчитаем треугольник со сторонами 0 и 6")
triangleDataCounter(a: 0, b: 6.0)



