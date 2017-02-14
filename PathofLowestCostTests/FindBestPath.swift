//
//  FindBestPath.swift
//  PathofLowestCost
//
//  Created by A1 on 12/02/17.
//  Copyright © 2017 ABC. All rights reserved.
//

import XCTest

class FindBestPath: XCTestCase {
    
    let searchOPath = searchOptimumPath!
    
    override func setUp() {
        super.setUp()
        searchOPath = searchOptimumPath()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testEmptyMatrix() {
        let (success, resistance, path) = searchOPath.search([])
        XCTAssertFalse(success)
        XCTAssertEqual(0, resistance)
        XCTAssertEqual([], path)
        // This is an example of a performance test case.
        }
    
    func testMatrix() {
        let arr:Array<Array<Int>> = [[3,4,1,2,8,6],[6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,8,6,4]]        let (success, pathSum, path) = out.search(arr)
        XCTAssertFalse(success)
        XCTAssertEqual(16, pathSum)
        XCTAssertEqual([1,2,3,4,4,5], path)
        
    }
    
}
