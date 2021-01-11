import UIKit

enum windowState{
    case open,close
}

enum doorState{
    case open,close
}
class car {
    var type : String
    var model : String
    var weight : Double
    var height : Double
    var window : windowState
    
    init(type: String, model : String, weight : Double, height : Double, window : windowState) {
        self.type = type
        self.model = model
        self.weight = weight
        self.height = height
        self.window = window
    }
    
    func typeInfo(){
        print("Тип машины: \(type)")
    }
}

final class sportCar: car {
    var door : doorState
    
   init(type: String, model : String, weight : Double, height : Double, window : windowState, door : doorState){
        self.door = door
        super.init(type: type, model: model, weight: weight, height: height, window: window)
    }
    
    func openDoor(){
        print("Дверь нельзя открывать")
    }

    func closeDoor(){
        door = .close
        print("Дверь закрыта")
    }
    
}

final class trunkCar : car{
    var trunk: Bool
    var trunkSize: Double
    
    init(type: String, model : String, weight : Double, height : Double, window : windowState, trunk : Bool, trunkSize: Double){
        self.trunk = trunk
        self.trunkSize = trunkSize
        super.init(type: type, model: model, weight: weight, height: height, window: window)
    }
    
    func sizeTrunk(){
        print("Длина прицепа составляет (/self.trunkSize) метров")
    }
}

var car1 = sportCar(type: "Sportcar", model: "Ferrari", weight: 3.5, height: 30.6, window: .close, door: .open)
var car2 = sportCar(type: "Выставочная модель", model: "Lambo", weight: 2.7, height: 35.5, window: .close, door: .close)
var car3 = trunkCar(type: "Грузовик", model: "Kamaz", weight: 15.5, height: 48.9, window: .open, trunk: true, trunkSize: 45)
        
print(car1)
print(car2)
print(car3)
