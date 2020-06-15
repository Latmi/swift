import UIKit

// 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

class Car {
    
    var weight: Double
    var enginePower: Int
    var model: String
    var year: String

    
    init (weight: Double, enginePower: Int, model: String, year: String) {
        self.weight = weight
        self.enginePower = enginePower
        self.model = model
        self.year = year
    }
    
    func carAction(action: carActions) {
        
    }
    
}

// 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
enum carActions {
    case loadTrunk, unloadTrunk, getNitrousOxide
}

// 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

class TrunkCar: Car {
    
    var trailerLong: Int = 12
    
    // 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
    
    override func carAction(action: carActions) {
        switch action {
        case .loadTrunk:
            print("loadTrunk")
        case .unloadTrunk:
            print("loadTrunk")
        default:
            print("nothing doing")
        }
    }

    
}

class SportСar: Car {
    
    var spoilerHeight: Int = 2
    
    
    override func carAction(action: carActions) {
        switch action {
        case .getNitrousOxide:
            print("go go go")
        default:
            print("nothing doing")
        }
    }
    
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.


var honda = SportСar(weight: 1200.5, enginePower: 600, model: "Honda", year: "1998")

var mercedes = TrunkCar(weight: 10000.0, enginePower: 800, model: "Mercedes", year: "2009")

// 6. Вывести значения свойств экземпляров в консоль.

print(honda.weight)
print(honda.enginePower)
print(honda.model)
print(honda.year)
print(honda.spoilerHeight)


print(mercedes.weight)
print(mercedes.enginePower)
print(mercedes.model)
print(mercedes.year)
print(mercedes.trailerLong)
