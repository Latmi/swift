import UIKit

// 1. Написать функцию, которая определяет, четное число или нет.

func checkNumberIsEven (number: Int) -> Bool {
    
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}



// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func checkNumberIsDivRemBy3 (number: Int) -> Bool {
    
    if number % 3 == 0 {
        return true
    } else {
        return false
    }
}



// 3. Создать возрастающий массив из 100 чисел.

var arrNumbers: [Int] = Array (1...100)



// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for value in  arrNumbers {
    
    if (checkNumberIsEven(number: value) || !checkNumberIsDivRemBy3(number: value)) {
        
        arrNumbers.remove(at: arrNumbers.firstIndex(of: value)!)
    }
}
