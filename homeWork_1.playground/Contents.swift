import Foundation

print("1. Решить квадратное уравнение.\r\n")
print("Уравнение: 2x^2 + 4x + 2 = 0")

var a: Double = 3.2
var b: Double = -7.8
var c: Double = 1

var y: Double = 4

var discr = pow(Double(b), 2) - y * a * c


if discr > 0 {
    
    let x1 = (-b + sqrt(discr)) / (2 * a)
    let x2 = (-b - sqrt(discr)) / (2 * a)
    print("Дискриминант: \(discr), первый корень: \(x1), второй корень: \(x2)")
    
} else if discr == 0 {
    let x1 = -b / (2 * a)
    print("Дискриминант: \(discr), корень: \(x1)")
    
} else {
    print("Корней нет")
}



print("\r\n")
print("2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.\r\n")

let k1: Double = 23.4
let k2: Double = 65.8


var gPow = pow(k1, 2) + pow(k2, 2)
var g = sqrt(gPow)

var perimeter = k1 + k2 + g

// узнаем площадь формулой Герона, где p - полупериметр

var p = perimeter / 2
var area = sqrt(p * (p - k1) * (p - k2) * (p - g))


print("Катет1: \(k1), катет2: \(k2)")
print("Гипотенуза: \(g), периметр: \(perimeter), площадь: \(area)")

