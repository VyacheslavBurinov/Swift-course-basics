import UIKit

var numberArray: [Int] = []

let count = 100

var number = 1

for _ in 1...count {
    numberArray.append(number)
    number += 1
}

print(numberArray)

var delNumbers = numberArray.filter {$0 % 2 == 0 || $0 % 3 == 0}

print(delNumbers)
