//
//  TestShape.swift
//  RayTracerTest
//
//  Created by Steven Behnke on 7/4/19.
//  Copyright © 2019 Steven Behnke. All rights reserved.
//

import Foundation

class TestShape : Shape {
    
    override func localIntersects(ray: Ray) -> [Intersection] {
        savedRay = ray
        return []
    }
    
    override func localNormalAt(p: Tuple) -> Tuple {
        return p - Tuple.pointZero
    }
    
    var savedRay = Ray(origin: .pointZero, direction: .zero)
}
