//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Polygon: Shape{

	public var position: Vector2
	public var sides: Int
	public var rotation: Float
	public var radius: Float

	@inlinable public init(at position: Vector2, sides: Int, rotation: Float, radius: Float) {
		self.position = position
		self.sides = sides
		self.rotation = rotation
		self.radius = radius
	}

	@inlinable public var frame: Rectangle {
		Rectangle(at: position - radius, size: Vector2(diameter))
	}
	
	@inlinable public var diameter: Float {
		radius * 2
	}
	
}
