//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play

import UIKit

protocol Identity {
    var id: Int { get set }
}

class ToDo: Identity {
    var id: Int
    var task: String
    var completed: Bool?
    var dateCompleted: String?
    init(task: String, completed: Bool?){
        self.id = 0
        self.task = task
        self.completed = completed
    }
    func printToDo() -> String
    {
        return "\(id) \(task) \(completed)"
    }
    
}

protocol ObjectStore: class {
    associatedtype Object: Identity
    var objectlist: [Object] { get set }
    var serialNumber: Int {get set}
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
    
}

extension ObjectStore {
    
    func add(object: Object) {
        print(object.id)
        var myObject = object
        self.serialNumber += 1
        myObject.id = self.serialNumber
        self.objectlist.append(myObject)
    }
    func remove(object: Object){
        self.objectlist = self.objectlist.filter({(task) -> Bool  in
            return task.id != object.id
            }
        )
        
    }
    func objectAtIndex(index: Int) -> Object
    {
        return self.objectlist[index]
    }
    func count() -> Int {
        return self.objectlist.count
    }
    func allObjects() -> [Object] {
        return self.objectlist
    }

}

class Tasks: ObjectStore {
    var serialNumber = 0
    static let shared = Tasks()
    private init() {}
    
    typealias Object = ToDo
    var objectlist = [Object]()
    
}

let task1 = ToDo(task: "Eat Me", completed: false)
let task2 = ToDo(task: "New", completed: true)
let task3 = ToDo(task: "latest", completed: true)
let task4 = ToDo(task: "task 4", completed: false)

Tasks.shared.add(task1)
Tasks.shared.add(task2)
//Tasks.shared.add(task1)
Tasks.shared.add(task3)



for index in Tasks.shared.allObjects()
{
    print(index.printToDo())
    
}

Tasks.shared.remove(task3)

Tasks.shared.add(task4)

for index in Tasks.shared.allObjects()
{
    print(index.printToDo())
    
}
