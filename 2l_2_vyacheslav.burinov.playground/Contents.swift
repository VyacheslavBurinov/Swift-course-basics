import UIKit

// Написать функцию, которая определяет, делится ли число без остатка на 3


let number = 9

func checkNumber() {
    switch number {
    case _ where number % 3 == 0:
        print("Число делится на 3 без остатка")
    default:
        print("Число не делится на 3 без остатка")
    }
}
checkNumber()
