//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func power<Number: Numeric>(value: Number, exponent: Int) -> Number {
    if exponent == 0 { return 1 }
    
    var result: Number = 1
    for i in 0..<exponent {
        result *= value
    }
    return result
}
let num: Int = 21
power(value: 18.5, exponent: 4)
power(value: num, exponent: 4)



infix operator **


extension Numeric {
    static func ** (value: Self, exponent: Int) -> Self {
        return Array(repeating: value, count: exponent).reduce(1, *) }
}

8 ** 3

extension Numeric {
    func raisedTo(_ exponent: Int) -> Self {
        return Array(repeating: self, count: exponent).reduce(1, *) }
}

2.raisedTo(8)

//: [Next](@next)
