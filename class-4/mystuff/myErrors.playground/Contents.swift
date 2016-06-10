//: Playground - noun: a place where people can play

import UIKit

enum Error: ErrorType{
    case NoFuel
    case EngineProblem
}

class Vehicle {
    
    var gasMeter = 0
    
    func go() throws
    {
        if self.gasMeter > 0 {
            print("Got Gas")
            
        } else {
            throw Error.NoFuel
        }
    }
}

let vehicle = Vehicle()
vehicle.gasMeter = 10

try! vehicle.go()

do {
    try vehicle.go()
    print("we are going")
}
catch {
    print(error)
}

