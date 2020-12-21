import UIKit

var str = "Пользователю посчитает процент вклада за 5 лет"

var deposit = 10000

var perc = 8

var year = 1
var perYear1 = Double(deposit+(deposit*perc/100))
var perYear2 = Double(perYear1+(perYear1*perc/100))
var perYear3 = Double(perYear2+(perYear2*perc/100))
var perYear4 = Double(perYear3+(perYear3*perc/100))
var perYear5 = Double(perYear4+(perYear4*perc/100))

print(perYear1)
print(perYear2)
print(perYear3)
print(perYear4)
print(perYear5)
