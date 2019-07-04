//
//  Triangle.swift
//  RayTracerTest
//
//  Created by Steven Behnke on 7/4/19.
//  Copyright © 2019 Steven Behnke. All rights reserved.
//

import Foundation

class Triangle: Shape {
    override func localIntersects(ray: Ray) -> [Intersection] {
        return []
    }
    
    override func localNormalAt(p: Tuple) -> Tuple {
        return p - Tuple.pointZero
    }
}
