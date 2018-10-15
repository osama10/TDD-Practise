
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
}
