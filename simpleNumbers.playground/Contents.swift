import UIKit

func simpleNumbers(numbersArray: [Int]) -> [Int] {
    var simple: [Int] = []
    var secondArray = numbersArray
    while let numbers = secondArray.first {
        simple.append(numbers)
        secondArray = secondArray.filter { $0 % numbers != 0 }
    }
    return simple
}
print(simpleNumbers(numbersArray: Array (2...100)))
