//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Osama Bin Bashir on 15/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import Foundation

struct ToDoItem {
    var title : String
    var itemDescription : String?
    var timeStamp : Double?
    var location : Location?
    
    init(title : String, itemDescription : String? = nil, timeStamp : Double? = nil, location : Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timeStamp = timeStamp
        self.location = location
    }
    
}
