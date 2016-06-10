//: Playground - noun: a place where people can play

import UIKit

protocol Identity
{
    //
}

class Store<T: Identity >
{
    private var datastore = [T]()
    
    func add(element: T)
    {
    self.datastore.append(element)
    
    }
    
}

let store = Store<Int>()

store.add(1)

let store2 = Store<String>()
store2.add("Test")

let store3 = Store<AnyObject>()

store3.add("12")
store3.add(store)
store3

class Person: Identity
{
    
}

let store4 = Store<Person>()
let person = Person()

store.add(person)