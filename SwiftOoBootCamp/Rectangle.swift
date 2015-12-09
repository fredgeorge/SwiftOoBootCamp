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
    
    init(height: Double, width: Double) {
        self.width = width
        self.height = height
    }
    
    func area() ->  Double {
        return self.width * self.height
    }
    
    func perimeter() -> Double {
        return 2 * (self.width + self.height)
    }
}
