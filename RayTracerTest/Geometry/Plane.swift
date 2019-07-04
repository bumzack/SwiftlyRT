//
//  Plane.swift
//  RayTracerTest
//
//  Created by Steven Behnke on 7/4/19.
//  Copyright © 2019 Steven Behnke. All rights reserved.
//

import Foundation

class Plane: Shape {
    
    override func localIntersects(ray: Ray) -> [Intersection] {

        if abs(ray.direction.y) < Tuple.epsilon {
            return []
        }
        
        return [Intersection(t: -ray.origin.y / ray.direction.y, object: self)]
    }
    
    override func localNormalAt(p: Tuple) -> Tuple {
        return .Vector(x: 0, y: 1, z: 0)
    }
}