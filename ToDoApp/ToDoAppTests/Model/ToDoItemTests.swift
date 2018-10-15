
//
//  ToDoItemTest.swift
//  ToDoAppTests
//
//  Created by Osama Bin Bashir on 15/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import XCTest
@testable import ToDoApp

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
   
    func test_Init_TakeTitle_SetTitle(){
        let item = ToDoItem(title : "Title", itemDescription : "Description", timeStamp : 45465656)
        
        XCTAssert((item.title == "Title"), "Title test failed")
        XCTAssert((item.itemDescription == "Description"), "Description test failed")
        XCTAssert((item.timeStamp == 45465656), "Timestamp test failed")
    }
    
    func test_Init_TakeLocation_SetLocation(){
        let location = Location(title : "Home")
        let item = ToDoItem(title : "Title", itemDescription : "Description", timeStamp : 45465656, location : location)
        XCTAssert((location.title == item.location?.title), "Location case failed")
    }
    
    func text_EqualItems_AreEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Foo")
        XCTAssertEqual(first, second)
    }
    
    func test_Items_WhenLocationDiffers_AreNotEqual() {
        let first = ToDoItem(title: "",
                             location: Location(title: "Foo"))
        let second = ToDoItem(title: "",
                              location: Location(title: "Bar"))
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenOneLocationIsNil_AreNotEqual() {
        var first = ToDoItem(title: "",
                             location: Location(title: "Foo"))
        var second = ToDoItem(title: "",
                              location: nil)
        XCTAssertNotEqual(first, second)
        
        first = ToDoItem(title: "",
                         location: nil)
        second = ToDoItem(title: "",
                          location: Location(title: "Foo"))
        XCTAssertNotEqual(first, second)

    }
    
    func test_Items_WhenTimestampsDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo",
                             timeStamp: 1.0)
        let second = ToDoItem(title: "Foo",
                              timeStamp: 0.0)
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenDescriptionsDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo",
                             itemDescription: "Bar")
        let second = ToDoItem(title: "Foo",
                              itemDescription: "Baz")
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTitlesDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Bar")
        XCTAssertNotEqual(first, second)
    }
}
