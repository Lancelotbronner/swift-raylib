//
//  Ellipse.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-06.
//

public struct Ellipse: Shape {
	public var position: Vector2
	public var radius: Vector2

	@inlinable public init(at position: Vector2, radius: Vector2) {
		self.position = position
		self.radius = radius
	}
}

public extension Ellipse {

	@inlinable var frame: Rectangle {
		Rectangle(at: position - radius, size: diameter)
	}
	
	@inlinable var diameter: Vector2 {
		radius * 2
	}
	
}
