//
//  ItemManagerTests.swift
//  ToDoAppTests
//
//  Created by Osama Bin Bashir on 15/10/2018.
//  Copyright © 2018 Osama Bin Bashir. All rights reserved.
//

import XCTest
@testable import ToDoApp

class ItemManagerTests: XCTestCase {
    var sut: ItemManager!
    override func setUp() {
        super.setUp()
        sut = ItemManager()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_ToDoCount_Initially_IsZero(){
        XCTAssertEqual(sut.toDoCount, 0, "ToDocountZero test failed")
    }
    
    func test_DoneCount_Initially_IsZero(){
        XCTAssertEqual(sut.doneCount, 0, "DoneCountZero test failed")
    }
    
    func test_AddItem_IncreasesToDoCountToOne() {
        sut.add(ToDoItem(title: ""))
        XCTAssertEqual(sut.toDoCount, 1)
    }
    
    func test_ItemAt_ReturnsAddedItem() {
        let item = ToDoItem(title: "Foo")
        sut.add(item)
        let returnedItem = sut.item(at: 0)
        
        XCTAssertEqual(returnedItem.title, item.title)
    }
    
    func test_CheckItemAt_ChangesCounts() {
        sut.add(ToDoItem(title: ""))
        sut.checkItem(at: 0)
        
        XCTAssertEqual(sut.toDoCount, 0)
        XCTAssertEqual(sut.doneCount, 1)
    }
    
    func test_CheckItemAt_RemovesItFromToDoItems() {
        let first = ToDoItem(title: "First")
        let second = ToDoItem(title: "Second")
       
        sut.add(first)
        sut.add(second)
        sut.checkItem(at: 0)
       
        XCTAssertEqual(sut.item(at: 0).title,
                       "Second")
    }
    
    func test_DoneItemAt_ReturnsCheckedItem() {
        let item = ToDoItem(title: "Foo")
        sut.add(item)
        sut.checkItem(at: 0)
        let returnedItem = sut.doneItem(at: 0)
        XCTAssertEqual(returnedItem.title, item.title)
    }
    
    func test_RemoveAll_ResultsInCountsBeZero() {
        sut.add(ToDoItem(title: "Foo"))
        sut.add(ToDoItem(title: "Bar"))
        sut.checkItem(at: 0)
        XCTAssertEqual(sut.toDoCount, 1)
        XCTAssertEqual(sut.doneCount, 1)
        sut.removeAll()
        
        XCTAssertEqual(sut.toDoCount, 0)
        XCTAssertEqual(sut.doneCount, 0)
    }
    
    func test_Add_WhenItemIsAlreadyAdded_DoesNotIncreaseCount() {
        sut.add(ToDoItem(title: "Foo"))
        sut.add(ToDoItem(title: "Foo"))
        XCTAssertEqual(sut.toDoCount, 1)
    }
}
