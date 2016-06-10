//: Playground - noun: a place where people can play

import UIKit


//enum CoolStatus : String {
//    
//    case NotCool
//    case Kindacool
//    case Cool
//    case SuperCool
//    
//    func howCoolAmI() {
//        print("You Are \(self.rawValue)")
//    }
//}
//
//let myStatus = CoolStatus.SuperCool
//
//
//myStatus.rawValue
//myStatus.hashValue
//
//myStatus.howCoolAmI()
//

//enum Identification{
//    case Social(Int)
//    case Email(String)
//    case Other(Int, Int, Int)
//}
//
//let myID = Identification.Email("derekg@derekg.com")
//let social = Identification.Social(555555)
//
//let wierdID = Identification.Other(5, 10, 17)
//
//switch wierdID {
//    
//case .Email(let email):
//    print("\(email)")
//    
//case .Other(let int1, let int2, let int3):
//        print("\(int1):\(int2):\(int3)")
//default:
//    print("")
//}

//class Store {
//    static let shared = 0
//    
//    private init(){}
//}
//
//let myStore = Store()
//
//Store.shared


//var count = 0
//
//var array = [Int]() {
//    didSet{ count += 1 }
//}
//
//array.append(5)
//count
//array.append(2)
//count
//array.append(5)
//count

class CrazyStuff {
    func instanceMethod(){
        print("This is an instance method")
        
    }
    static func staticMethod(){
        print("This is a static method")
    }
    
    // makes it possible access in subclasses for over-riding
    class func classMethod(){
        print("Also a static func")
    }
}
