//
//  NSComparisonResultTests.swift
//  SwiftFoundation
//
//  Created by Alsey Coleman Miller on 7/3/15.
//  Copyright © 2015 PureSwift. All rights reserved.
//

#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)

import XCTest
import Foundation
import SwiftFoundation

class NSComparisonResultTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testComparisonResult() {
        
        // number
        
        XCTAssert((1 as Int).compare(2) == Order(foundation: 1.compare(NSNumber(value: 2))))
        
        XCTAssert((2 as Int).compare(1) == Order(foundation: 2.compare(NSNumber(value: 1))))
        
        XCTAssert((1 as Int).compare(1) == Order(foundation: 1.compare(NSNumber(value: 1))))
        
        // string
        
        XCTAssert("a".compare("b") == Order(foundation: ("a" as NSString).compare("b" as String)))
        
        XCTAssert("b".compare("a") == Order(foundation: ("b" as NSString).compare("a" as String)))
        
        XCTAssert("a".compare("a") == Order(foundation: ("a" as NSString).compare("a" as String)))
        
        // dates
        
        let now = Date()
        
        let later = now + 0.5
        
        let foundationNow = NSDate()
        
        let foundationLater = foundationNow.addingTimeInterval(0.5)
        
        XCTAssert(now.compare(later) == Order(foundation: foundationNow.compare(foundationLater)))
        
        XCTAssert(now < later)
    }
}

#endif
