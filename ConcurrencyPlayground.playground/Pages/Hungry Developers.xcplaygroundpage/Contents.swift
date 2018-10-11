//: [Previous](@previous)

import Foundation
import Cocoa

var str = "Hello, playground"

class Developer {
    
    
    let devName: Int
    var leftSpoon: Spoon
    var rightSpoon: Spoon
    
    init(devName: Int, leftSpoon: Spoon, rightSpoon: Spoon) {
        self.devName = devName
        self.leftSpoon = leftSpoon
        self.rightSpoon = rightSpoon
    }
    
    func think() {
        DispatchQueue.concurrentPerform(iterations: 2) { int in
            if int == 0 {
                leftSpoon.pickUp()
                print("\(devName) picked up left spoon")
                
            } else {
                rightSpoon.pickUp()
                print("\(devName) picked up right spoon")
            }
        }
    }
    
    func eat() {
        let _ = usleep((arc4random_uniform(8) + 2) * 10000)
        leftSpoon.putDown()
        rightSpoon.putDown()
        print("\(devName) done eating")
    }
    
    func run() {
        while true {
            think()
            eat()
        }
    }
    
}

class Spoon {
    
    let spoonIndex: Int
    
    init(spoonIndex: Int) {
        self.spoonIndex = spoonIndex
    }
    
    private let spoonLock = NSLock()
    
    func pickUp(){
        spoonLock.lock()
    }
    
    func putDown(){
        spoonLock.unlock()
    }
    
}

var spoon1 = Spoon(spoonIndex: 1)
var spoon2 = Spoon(spoonIndex: 2)
var spoon3 = Spoon(spoonIndex: 3)
var spoon4 = Spoon(spoonIndex: 4)
var spoon5 = Spoon(spoonIndex: 5)

var dev1 = Developer(devName: 1, leftSpoon: spoon1, rightSpoon: spoon2)
var dev2 = Developer(devName: 2, leftSpoon: spoon2, rightSpoon: spoon3)
var dev3 = Developer(devName: 3, leftSpoon: spoon3, rightSpoon: spoon4)
var dev4 = Developer(devName: 4, leftSpoon: spoon4, rightSpoon: spoon5)
var dev5 = Developer(devName: 5, leftSpoon: spoon5, rightSpoon: spoon1)

let developers = [dev1, dev2, dev3, dev4, dev5]

for developer in developers {
    DispatchQueue.global().async {
        developer.run()
    }
}

dispatchMain()
//: [Next](@next)
