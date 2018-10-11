//: [Previous](@previous)

import Foundation

struct CountedSet<Element: Hashable> {
    
    mutating func insert(_ newElement: Element){
        if var count = elementCount[newElement]{
            count += 1
            elementCount[newElement] = count
        } else {
            elementCount[newElement] = 1
        }
    }
    
    mutating func remove(_ newElement: Element){
        if var count = elementCount[newElement]{
            count -= 1
            if count == 0 {
                elementCount.removeValue(forKey: newElement)
            } else {
            elementCount[newElement] = count
            }
        }
    }
    
    public subscript(_ newElement: Element) -> Int {
        return elementCount[newElement, default: 0]
    }
        
    var count: Int { return elementCount.keys.count}
        
    var isEmpty: Bool {
        return count == 0
    }
    
    var elementCount: [Element: Int]
    
}
extension CountedSet: ExpressibleByArrayLiteral {
    
    public init(arrayLiteral: Element...) {
        self.init(elementCount: [:])
        for element in arrayLiteral{
            elementCount[element] = elementCount[element, default: 0] + 1
        }
    }
}

enum Arrow { case iron, wooden, elven, dwarvish, magic, silver }
var aCountedSet = CountedSet<Arrow>()
aCountedSet[.iron] // 0
var myCountedSet: CountedSet<Arrow> = [.iron, .magic, .iron, .silver, .iron, .iron]
myCountedSet[.iron] // 4
myCountedSet.remove(.iron) // 3
myCountedSet.remove(.dwarvish) // 0
var nameThis: CountedSet<String> = []
nameThis.insert("Books")
nameThis.insert("Parchment")
nameThis.insert("Potion")
nameThis.insert("Potion")
nameThis.remove("Books")
nameThis["Potion"]
var nameCount = nameThis.count
var elemCount = nameThis.elementCount
print(nameThis.isEmpty)
print(elemCount)
print(nameCount)
print(nameThis)
print(myCountedSet)
var numberThis: CountedSet<Int> = []
numberThis.insert(5)
numberThis.insert(23)
numberThis.insert(38)
print(numberThis)
//: [Next](@next)
