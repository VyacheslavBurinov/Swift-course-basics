import UIKit

func fiboArray(_ n: Int) -> [Double] {
    var fibo: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibo.append(fibo[i - 1] + fibo[i - 2])
    }
    return fibo
}
print(fiboArray(100))
