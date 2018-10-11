import Cocoa

var str = "Hello, playground"

infix operator <=>
func <=> <Value>(lhs: inout Value, rhs: inout Value) {
    // Use clear names for value types to help other read and understand code.
    
    let temp = lhs
    lhs = rhs
    rhs = temp
    
}
var a = "bar"
var b = "foo"

a <=> b

print("\(a) and \(b)")

// Don't use these too often becuase it can be hard to understand for others.
// Beware operator overloading. Use judiciously.
