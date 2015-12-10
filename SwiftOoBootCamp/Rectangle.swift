//
//  Rectangle.swift
//  SwiftOoBootCamp
//
//  Created by Fred on 12/9/15.
//  Copyright © 2015 Fred George Consulting. All rights reserved.
//

import Foundation

// Understands a 4-sided polygon with sides at right angles
class Rectangle {
    var width: Double
    var height: Double
    
    init(height: Double, width: Double) throws {
        self.height = height
        self.width = width
        guard height > 0 && width > 0 else {
            throw ParameterError.RangeError
        }
    }
    
    func area() ->  Double {
        return self.width * self.height
    }
    
    func perimeter() -> Double {
        return 2 * (self.width + self.height)
    }
}

enum ParameterError : ErrorType {
    case RangeError
}
