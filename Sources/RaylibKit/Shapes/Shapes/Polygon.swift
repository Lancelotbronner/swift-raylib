//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Polygon

public struct Polygon {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var sides: Int
	public var rotation: Float
	public var radius: Float
	
	//MARK: Computed Properties
	
	@inlinable public var frame: Rectangle {
		Rectangle(at: position - radius, size: Vector2f(diameter))
	}
	
	@inlinable public var diameter: Float {
		radius * 2
	}
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, sides: Int, rotation: Float, radius: Float) {
		self.position = position
		self.sides = sides
		self.rotation = rotation
		self.radius = radius
	}
	
}
