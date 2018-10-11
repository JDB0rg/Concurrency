//: [Previous](@previous)

import Foundation

func power<Number: Numeric>(value: Number, exponent: Int) -> Number {
    
    var result: Number = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

power(value: 3, exponent: 3)

infix operator **
func **<Number: Numeric>(_ value: Number, _ exponent: Int) -> Number {
    
    var result: Number = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

3 ** 3

extension Numeric {
    func power(_ exponent: Int) -> Self {
        
        var result: Self = 1
        
        for _ in 0..<exponent {
            result *= self
        }
        return result
    }
}

6.5.power(3)

//: [Next](@next)

