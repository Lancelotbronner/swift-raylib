//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

public struct Ellipse: Shape {
	
	public var position: Vector2f
	public var radius: Vector2f

	@inlinable public init(at position: Vector2f, radius: Vector2f) {
		self.position = position
		self.radius = radius
	}
	
	@inlinable public var frame: Rectangle {
		Rectangle(at: position - radius, size: diameter)
	}
	
	@inlinable public var diameter: Vector2f {
		radius * 2
	}
	
}
