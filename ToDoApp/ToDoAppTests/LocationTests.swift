//
//  LocationTests.swift
//  ToDoAppTests
//
//  Created by Osama Bin Bashir on 15/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import XCTest
import CoreLocation

@testable import ToDoApp

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_Init_SetCoordinates(){
        let coordinate = CLLocationCoordinate2D(latitude: 20, longitude: 20)
        let location = Location(title: "Pakistan", coordinate : coordinate)
        
        XCTAssertEqual(coordinate.latitude, location.coordinate?.latitude, "Lat test failed")
        XCTAssertEqual(coordinate.longitude, location.coordinate?.longitude, "Lng test failed")
    }
    
    
}
