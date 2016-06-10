//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Derek Graham on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

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
