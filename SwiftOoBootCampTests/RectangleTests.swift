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
        XCTAssertEqualWithAccuracy(12, Rectangle(height: 3, width: 4).area(), accuracy: EPSILON)
    }
    
    func testPerimeter() {
        XCTAssertEqualWithAccuracy(14, Rectangle(height: 3, width: 4).perimeter(), accuracy: EPSILON)
    }
    
}
