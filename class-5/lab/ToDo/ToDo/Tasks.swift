//
//  Tasks.swift
//  ToDo
//
//  Created by Derek Graham on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Tasks: ObjectStore {
    var serialNumber = 0
    static let shared = Tasks()
    private init() {}
    
    typealias Object = ToDo
    var objectlist = [Object]()
    
}