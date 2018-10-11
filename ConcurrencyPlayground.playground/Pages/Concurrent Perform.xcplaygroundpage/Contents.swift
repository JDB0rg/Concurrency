import Cocoa

var x = 42

let lock = NSLock()
DispatchQueue.concurrentPerform(iterations: 10) { (_) in
    lock.lock()
    
        var scratch = x
        scratch += 1
        x = scratch
    
    lock.unlock()
}

print(x)

// We should only be locking where we are accessing and changing the critical section.
// It should only be those specific parts of the function and not the whole thing.
