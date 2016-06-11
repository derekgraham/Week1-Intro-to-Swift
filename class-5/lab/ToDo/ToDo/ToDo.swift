//
//  ToDo.swift
//  ToDo
//
//  Created by Derek Graham on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

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