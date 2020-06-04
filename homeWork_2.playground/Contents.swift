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
