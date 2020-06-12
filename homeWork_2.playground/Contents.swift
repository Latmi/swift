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



// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.


var arrFibonachi: [Int] = [1, 1]


func addFibonachiNum (array: inout [Int]) {

    var nextValue: Int = 0;
    for val in stride(from: array.count - 1, through: array.count - 2, by: -1) {
        nextValue += array[val]
    }
    array.append(nextValue)
    
    
}

// в задании сказано добавить 100 раз, но на 91 добавлении начинает вылезать ошибка
// rror: Execution was interrupted, reason: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0).

for _ in (1...90) {
    addFibonachiNum(array: &arrFibonachi)
}



// 6. *. Заполнить массив из 100 элементов различными простыми числами.


let n = 541
var arrSimpleNums = [Int](2...n)
var p = 2

while p != 0 {

    for i in 2...n {
        if let index = arrSimpleNums.firstIndex(of: (i * p)) {
            arrSimpleNums.remove(at: index)
        }
    }
    let index = arrSimpleNums.firstIndex(of: p)

    if (index != (arrSimpleNums.endIndex - 1)) {
        p = arrSimpleNums[index! + 1]
    } else {
        p = 0
    }
}
