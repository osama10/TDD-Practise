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
    
    func test_EqualLocations_AreEqual() {
        let first = Location(title: "Foo")
        let second = Location(title: "Foo")
        XCTAssertEqual(first, second)
    }
    
    func test_Locations_WhenLatitudeDiffers_AreNotEqual() {
        assertLocationNotEqualWith(firstName: "Foo",firstLongLat:(1.0, 0.0),secondName: "Foo", secondLongLat: (0.0, 0.0))
    }
    
    func test_Locations_WhenLongitudeDiffers_AreNotEqual() {
        assertLocationNotEqualWith(firstName: "Foo",firstLongLat:(0.0, 1.0),secondName: "Foo",secondLongLat: (0.0, 0.0))
    }

    func test_Locations_WhenOnlyOneHasCoordinate_AreNotEqual() {
        assertLocationNotEqualWith(firstName: "Foo",
                                   firstLongLat: (0.0, 0.0),
                                   secondName: "Foo",
                                   secondLongLat: nil)
    }
    
    func test_Locations_WhenNamesDiffer_AreNotEqual() {
        assertLocationNotEqualWith(firstName: "Foo",
                                   firstLongLat: nil,
                                   secondName: "Bar",
                                   secondLongLat: nil)
    }
   
    func assertLocationNotEqualWith(firstName: String,
                                    firstLongLat: (Double, Double)?,
                                    secondName: String,
                                    secondLongLat: (Double, Double)?, line : UInt = #line) {
        var firstCoord: CLLocationCoordinate2D? = nil
        if let firstLongLat = firstLongLat {
            firstCoord =
                CLLocationCoordinate2D(latitude: firstLongLat.0,
                                       longitude: firstLongLat.1)
        }
        let firstLocation =
            Location(title: firstName,
                     coordinate: firstCoord)
        var secondCoord: CLLocationCoordinate2D? = nil
        if let secondLongLat = secondLongLat {
            secondCoord =
                CLLocationCoordinate2D(latitude: secondLongLat.0,
                                       longitude: secondLongLat.1)
        }
        let secondLocation =
            Location(title: secondName,
                     coordinate: secondCoord)
        XCTAssertNotEqual(firstLocation, secondLocation, line : line)
    }
    
}
