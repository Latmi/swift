import Foundation

enum Windows {
    case open, close
}

// 1. Описать несколько структур – любой легковой автомобиль и любой грузовик.

struct Car {
    
    // 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
    
    let model: String
    let year: String
    let trunkVolume: Int
    var isEngineStarted: Bool
    var isWindowsOpened: Windows
    var busyTrunkVolume: Int
    
    // 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
    
    mutating func engineOn () {
        self.isEngineStarted = true
    }
    mutating func engineOff () {
        self.isEngineStarted = false
    }
    
    // 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
    
    mutating func windowsOpen () {
        self.isWindowsOpened = .open
    }
    mutating func windowsClose () {
        self.isWindowsOpened = .close
    }
    
    
    mutating func loadTrunk(weight: Int) {
        self.busyTrunkVolume += weight
    }
    mutating func unLoadTrunk(weight: Int) {
        self.busyTrunkVolume -= weight
    }
    
}

struct Truck {
    
    // 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
    
    let model: String
    let year: String
    let bodyVolume: Int
    var isEngineStarted: Bool
    var isWindowsOpened: Windows
    var busyBodyVolume: Int
    
    // 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
    
    mutating func engineOn () {
        self.isEngineStarted = true
    }
    mutating func engineOff () {
        self.isEngineStarted = false
    }
    
    // 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
    
    mutating func windowsOpen () {
        self.isWindowsOpened = .open
    }
    mutating func windowsClose () {
        self.isWindowsOpened = .close
    }
    
    
    mutating func loadBody(weight: Int) {
        self.busyBodyVolume += weight
    }
    mutating func unLoadBody(weight: Int) {
        self.busyBodyVolume -= weight
    }
    
}

// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

var honda = Car(model: "Honda", year: "2008", trunkVolume: 65, isEngineStarted: false, isWindowsOpened: .close, busyTrunkVolume: 0)
var bmw = Car(model: "BMW", year: "2004", trunkVolume: 45, isEngineStarted: false, isWindowsOpened: .open, busyTrunkVolume: 20)

honda.windowsOpen()

honda.loadTrunk(weight: 20)
honda.unLoadTrunk(weight: 10)

honda.engineOn()

print(honda)

bmw.windowsClose()

bmw.unLoadTrunk(weight: 20)
bmw.loadTrunk(weight: 40)

bmw.engineOn()

print(bmw)

var mercedes = Truck(model: "Mercedes", year: "2012", bodyVolume: 4000, isEngineStarted: false, isWindowsOpened: .close, busyBodyVolume: 200)

mercedes.windowsOpen()

mercedes.unLoadBody(weight: 200)
mercedes.loadBody(weight: 3500)

mercedes.engineOn()

print(mercedes)




