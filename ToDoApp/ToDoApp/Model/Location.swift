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

extension Location : Equatable{
    public static func ==(lhs: Location,
                          rhs: Location) -> Bool {
        if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
            return false
        }
        if lhs.coordinate?.longitude !=
            rhs.coordinate?.longitude {
            return false
        }
      
        if lhs.title != rhs.title {
            return false
        }
        return true
        
    }
}
