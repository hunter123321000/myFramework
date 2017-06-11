//
//  testDataConvert.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/11.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import XCTest

class testDataConvert: XCTestCase {
    
    override func setUp() {
        super.setUp()
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
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testDataConvertFunc() {
        let obj = dataConvert()
        XCTAssert((obj.hexStringtoAscii("41,31,36,57,42,31,44,30,30,32") == "A16WB1D002") == true)
    }
}
