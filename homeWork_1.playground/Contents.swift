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

