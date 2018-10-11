//: [Previous](@previous)

import Foundation

struct Queue<Element> {
    
    init(_ elements: [Element]) {
        self.elements = elements.reversed()
    }
    
    // Entering the Queue
    mutating func push(_ newElement: Element) {
        elements.insert(newElement, at: 0) // This is the end of the line
    }
    
    mutating func push2(_ newElement: Element) {
        elements.append(newElement)
    } /// Would not need to reverse the array this way. ///
    // Leaving the Queue
    mutating func pop() -> Element? {
        return elements.popLast()
    }
    
    mutating func pop2() -> Element? {
        return elements.removeFirst()
        
//        guard !elements.isEmpty else { return nil }
//        return elements.remove(at: 0)
        
    } /// Would not need to reverse the array this way. ///
    
    private(set) var elements: [Element] = []
    
    
}

var x = 3
var y = 7

let closure1 = {print ("one")}
let closure2 = {print ("two")}

let queue = Queue(elements: ["foo", "bar"])
let q2 = Queue(elements: [x, y])
let q3 = Queue(elements: [closure1, closure2])
print(q3)
//: [Next](@next)
