//: [Previous](@previous)

import Foundation

struct Queue<Element> {
    
    init(_ elements: [Element]) {
        items = elements.reversed()
    }
    
    mutating func push(_ newElement: Element) {
        items.insert(newElement, at: 0)
        
    }
    
    mutating func pop() -> Element? {
        return items.popLast()
        // or let result = items.last
        //items.removeLast()
        //return result
    }
    
//    mutating func clearQueue(action: (_ element: Element) -> Void {
//        while let next = pop() {
//            action(next)
//        }
//    }
    
    private(set) var items: [Element] = []
    
}

extension Queue: ExpressibleByArrayLiteral {
    init(arrayLiteral: Element...) {
        items = arrayLiteral.reversed()
    }
}

var a:Int = 26
var b:Int = 42
var q = Queue([a, b])
q.push(8)
q.push(16)
q.push(32)
q.pop() // pops out 16
print(q)

var q2: Queue<Int> = Queue([])
q2.push(25)
q2.push(7)
q2.push(19)
q2.push(31)
q2.push(95)
q2.pop()
print(q2)

var q3: Queue = [33, 3, 333, 3333]
print(q3)
//: [Next](@next)
