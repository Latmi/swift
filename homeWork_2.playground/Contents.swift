import UIKit

// 1. Написать функцию, которая определяет, четное число или нет.

func checkNumberIsEven (number: Int) -> Bool {
    
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
