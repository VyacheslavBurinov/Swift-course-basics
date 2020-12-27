import UIKit

enum engineState{
    case start, stop
}

enum windowState{
    case open, close
}

struct car{
    var model: String
    var year: Int
    var trunkVolume: Double
    var engine: engineState
    var window: windowState
    
    mutating func openWindow(){
        self.window = .open
    }
    
    mutating func closeWindow(){
        self.window = .close
    }
}

var sportCar = car(model: "Мерседес", year: 2015, trunkVolume: 20, engine: .start, window: .close)
var trunkCar = car(model: "КамаЗ", year: 1993, trunkVolume: 40, engine: .stop, window: .open)

sportCar.model
trunkCar.engine

sportCar.year = 2019
sportCar.year
