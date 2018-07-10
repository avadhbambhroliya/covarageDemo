//
//  CreateTeamTableUITests.swift
//  CreateTeamTableUITests
//
//  Created by Avadh Bambhroliya on 17/06/18.
//  Copyright © 2018 Avadh Bambhroliya. All rights reserved.
//

import XCTest

class CreateTeamTableUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery.children(matching: .cell).element(boundBy: 0).staticTexts["Avadhdd"].swipeRight()
        
        let button = tablesQuery.children(matching: .other).matching(identifier: "TEAM NAME*").element(boundBy: 0).buttons["Button"]
        button.tap()
        button.tap()
        button.tap()
        tablesQuery.children(matching: .other).matching(identifier: "TEAM NAME*").element(boundBy: 1).buttons["Button"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
