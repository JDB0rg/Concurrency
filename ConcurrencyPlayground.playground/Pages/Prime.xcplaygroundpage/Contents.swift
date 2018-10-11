////: [Previous](@previous)
//
//import Foundation
//
//func isPrime(_ x: Int) -> Bool {
//    
//    for i in 2..<x {
//        if x % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//isPrime(9)
//
//func primes(below n: Int) -> [Int] {
//    
//    var result: [Int] = []
//    
//    for i in 2..<n {
//        if isPrime(i) {
//            result.append(i)
//        }
//    }
//    return result
//}
//
//func primes(between min: Int, and max: Int) -> [Int] {
//    var result = [Int]()
//    for i in min..<max {
//        if isPrime(i) {result.append(i)}
//    }
//    return result
//}
//
//primes(below: 100)
//
///// Primes Concurrency ///
//func primes2(below n: Int) -> [Int] {
//    
//    var result: [Int] = []
//    let resultLock = NSLock()
//    
//    DispatchQueue.concurrentPerform(iterations: 2) { (_) in
//        let (min, max): (Int, Int)
//        if index == 0 {
//            (min, max) = (3, n/2)
//        } else {
//            (min, max) = (n/2, n)
//        }
//        
//        let primesArray = primes(between: min, and: max)
//
//        resultLock.lock()
//        let insertIndex = index == 0 ? 0 : result.count
//        result.insert(contentsOf: primesArray, at: insertIndex)
//        resultLock.unlock()
//    }
//    return result
//}


//: [Next](@next)
