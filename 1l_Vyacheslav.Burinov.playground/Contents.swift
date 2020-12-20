import UIKit

var str = "Решим квадратное уравнение вида a*x^2+b*x+c=0"

var a = 1
var b = -8

var c = 12

let x = sqrt(Double(b*2-4*a*c))

if (a != 0 && a < 0) {
    print("Квадратное уравнение не имеет действительных корней")
}else{
    print(x)
}
