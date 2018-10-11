import Cocoa

var x = "bar"
var y = "foo"


func swap(lhs: inout Int, rhs: inout Int) {

    let temp = lhs
    lhs = rhs
    rhs = temp

}
swap(&x, &y)
print(x)
print(y)

infix operator <==> // Defines a new operator
// infix is like inbetween. like suffix is at the end.
func <==> <T>(lhs: inout T, rhs: inout T) {
    
    let temp = lhs
    lhs = rhs
    rhs = temp
}

x <==> y
print("x: \(x) & y: \(y)")


var array: [String] = []
var array2: Array<String> = []

// <T> setting the type as a Generic represented by T
