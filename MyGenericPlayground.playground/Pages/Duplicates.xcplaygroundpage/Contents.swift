//: [Previous](@previous)

import Foundation

func removeDuplicates<S:Sequence>(_ s: S) -> [S.Element] where S.Element: Hashable {
    
    var seen: Set<S.Element> = []
    var result: [S.Element] = []
    for item in s {
        if !seen.contains(item) {
            seen.insert(item)
            result.append(item)
        }
    }
    return result
}

extension Sequence where Element: Hashable {
    // Move where statement "Hashable" to the extension on Sequence
    func removeDuplicates() -> [Element] {
        
        var seen: Set<Element> = []
        var result: [Element] = []
        for item in self {
            if !seen.contains(item) {
                seen.insert(item)
                result.append(item)
            }
        }
        return result
    }
}

let list = [2, 3, 2, 4 ,5 ,6 ,3 ,7 ,9 ,8 ,7 ,3]
list.removeDuplicates()

//: [Next](@next)
