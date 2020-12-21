import UIKit

var str = "Найдем площадь, периметр и гипотенузу треугольника"

var a = 15

var b = 10

let s = Double((a*b)/2)
print(s)
//площадь найдена

let c = sqrt(Double(a^2+b^2))
print(String(format:"%.2f", c))
//Нашли гипотенузу
let p = Double(a*b+b*Int(c)+a*Int(c))
print(p)
//Нашли периметр
