//
//  testCommomFunc.swift
//  hunter123321000library
//
//  Created by HungLi Chen on 2017/6/11.
//  Copyright © 2017年 hunter123321000. All rights reserved.
//

import XCTest

class testCommonFunc: XCTestCase {
    
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
    
    func testCommomFunc(){
        let obj = commonFunc()
//        XCTAssert(obj.isSameString(str1: "123",strs: "123","123","123") == true)
        XCTAssert(obj.isSameString(str1: "123", "123","123","123","123") == true)//省略第二個參數之後的參數名稱
        XCTAssert(obj.isSameInput(any1: 123,"123",123,1234,"123") == false)
        
        XCTAssert(obj.isValidPwd(pwd: "a123#45A678",maxLen:20) == true)
    }
}
