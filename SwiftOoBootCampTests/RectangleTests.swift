//
//  RectangleTests.swift
//  SwiftOoBootCampTests
//
//  Created by Fred on 12/9/15.
//  Copyright © 2015 Fred George Consulting. All rights reserved.
//

import XCTest
@testable import SwiftOoBootCamp

// Ensures Rectangle operates correctly
class RectangleTests: XCTestCase {
    let EPSILON: Double = 0.00001
    
    func testArea() {
        XCTAssertEqualWithAccuracy(12, try! Rectangle(height: 3, width: 4).area(), accuracy: EPSILON)
    }
    
    func testPerimeter() {
        XCTAssertEqualWithAccuracy(14, try! Rectangle(height: 3, width: 4).perimeter(), accuracy: EPSILON)
    }
    
    func testInvalidDimensions() {
        XCTAssertThrows(try Rectangle(height: 0, width: 4))
        XCTAssertThrows(try Rectangle(height: 3, width: 0))
        XCTAssertNoThrow(try Rectangle(height: 3, width: 4))
    }
    
    func XCTAssertThrows<T>(@autoclosure expression: () throws -> T, _ message: String = "", file: String = __FILE__, line: UInt = __LINE__) {
        do {
            try expression()
            XCTFail("No error to catch! - \(message)", file: file, line: line)
        } catch {
        }
    }
    
    func XCTAssertNoThrow<T>(@autoclosure expression: () throws -> T, _ message: String = "", file: String = __FILE__, line: UInt = __LINE__) {
        do {
            try expression()
        } catch let error {
            XCTFail("Caught error: \(error) - \(message)", file: file, line: line)
        }
    }

    
}
