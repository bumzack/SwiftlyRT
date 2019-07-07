//
//  Pattern.swift
//  RayTracerTest
//
//  Created by Steven Behnke on 7/4/19.
//  Copyright © 2019 Steven Behnke. All rights reserved.
//

import Foundation

class Pattern: Equatable {
    static func == (lhs: Pattern, rhs: Pattern) -> Bool {
        return lhs === rhs
    }
    
    func patternAt(point: Tuple) -> Color {
        return point.toColor()
    }
    
    func patternAtShape(object: Shape?, point: Tuple) -> Color {
        var t = self.inverseTransform
        if let o = object {
            t *= o.inverseTransform
        }
        
        let transformedPoint = t * point
        return patternAt(point: transformedPoint)
    }
    
    var transform = Matrix4x4.identity {
        didSet {
            inverseTransform = transform.inversed()
        }
    }
    private(set) var inverseTransform = Matrix4x4.identity
}