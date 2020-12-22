import UIKit

var numberArray: [Int] = []

let count = 100

var number = 1

for _ in 1...count {
    numberArray.append(number)
    number += 1
}

print(numberArray)
