import UIKit

/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

 6. Вывести сами объекты в консоль.
 */

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.//

enum doors{
    case open, close
}
enum windows {
    case open, close
}


protocol Car {
    var model: String {get}
    var type: String {get}
    var color: UIColor {get set}
    var door: doors {get set}
    var window: windows{get set}
    
    func WindowStatus(status: windows)
    func DoorStatus(status: doors)
}

//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).//


 extension Car{
    
    mutating func doorStatus(status: doors) {
        switch status {
        case .open:
            print ("Дверь открыта")
            self.door = .open
        case .close:
            print ("Дверь закрыта")
            self.door = .close
        }
    }
    
    mutating func windowStatus(status: windows) {
        switch status {
        case .open:
            print ("Окно открыто")
            self.window = .open
        case .close:
            print ("Окно закрыто")
            self.window = .close
        }
    }
}

// 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.//

class trunkCar: Car {
    var model: String
    
    var type: String
    
    var color: UIColor
    
    var door: doors
    
    var window: windows
    
    var cargo: Double
    
    init(model: String, type: String, color: UIColor, door: doors, window: windows, cargo: Double) {
        self.model = model
        self.type = type
        self.color = color
        self.door = door
        self.window = window
        self.cargo = cargo
    }
    
    func WindowStatus(status: windows) {
        switch status {
        case .open:
            print ("Окно открыто")
            self.window = .open
        case .close:
            print ("Окно закрыто")
            self.window = .close
        }
    }
    
    func DoorStatus(status: doors) {
        switch status {
        case .open:
            print ("Дверь открыта")
            self.door = .open
        case .close:
            print ("Дверь закрыта")
            self.door = .close
        }
    }
    
}


class sportCar: Car {
    var model: String
    
    var type: String
    
    var color: UIColor
    
    var door: doors
    
    var window: windows
    
    var maxSpeed: Double
    
    init(model: String, type: String, color: UIColor, door: doors, window: windows, maxSpeed: Double ) {
        self.model = model
        self.type = type
        self.color = color
        self.door = door
        self.window = window
        self.maxSpeed = maxSpeed
    }
    func WindowStatus(status: windows) {
        switch status {
        case .open:
            print ("Окно открыто")
            self.window = .open
        case .close:
            print ("Окно закрыто")
            self.window = .close
        }
    }
    
    func DoorStatus(status: doors) {
        switch status {
        case .open:
            print ("Дверь открыта")
            self.door = .open
        case .close:
            print ("Дверь закрыта")
            self.door = .close
        }
    }
    
    
}

//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.//

extension trunkCar: CustomStringConvertible {
    var description: String {
        return "\(model)"
    }
}

extension sportCar: CustomStringConvertible {
    var description: String {
        return "\(maxSpeed)"
    }
}

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.//

var car1 = sportCar(model: "Ferrari", type: "Sport", color: .green, door: .close, window: .close, maxSpeed: 34.0)

car1.doorStatus(status: .open)
car1.WindowStatus(status: .open)

var car2 = trunkCar(model: "Kamax", type: "Trunk", color: .red, door: .open, window: .close, cargo: 56.00)

car2.DoorStatus(status: .close)
car2.WindowStatus(status: .open)


