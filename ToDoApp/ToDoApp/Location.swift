//
//  Location.swift
//  ToDoApp
//
//  Created by Osama Bin Bashir on 15/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    var title : String
    var coordinate : CLLocationCoordinate2D?
    
    init(title : String, coordinate : CLLocationCoordinate2D? = nil) {
        self.title = title
        self.coordinate = coordinate
    }
}
