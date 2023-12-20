//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import raylib

public struct Circle: Shape {
	
	public var position: Vector2
	public var radius: Float

	@inlinable public init(at position: Vector2, radius: Float) {
		self.position = position
		self.radius = radius
	}

	@inlinable public init(at x: Float, _ y: Float, radius: Float) {
		self.init(at: Vector2(x, y), radius: radius)
	}

	@inlinable public var frame: Rectangle {
		Rectangle(at: position - radius, size: Vector2(diameter))
	}
	
	@inlinable public var left: Vector2 {
		Vector2(position.x - radius, position.y)
	}
	
	@inlinable public var right: Vector2 {
		Vector2(position.x + radius, position.y)
	}
	
	@inlinable public var top: Vector2 {
		Vector2(position.x, position.y - radius)
	}
	
	@inlinable public var bottom: Vector2 {
		Vector2(position.x, position.y + radius)
	}
	
	@inlinable public var diameter: Float {
		radius * 2
	}
	
	//MARK: - Translation

	@inlinable public mutating func translate(by step: Vector2) {
		position += step
	}
	
	@inlinable public func translated(by step: Vector2) -> Circle {
		Circle(at: position + step, radius: radius)
	}
	
	@inlinable public func translated(by x: Float, _ y: Float) -> Circle {
		translated(by: Vector2(x, y))
	}
	
	//MARK: - Collision

	@inlinable public func contains(_ x: Int, _ y: Int) -> Bool {
		CheckCollisionPointCircle(Vector2(x.toFloat, y.toFloat).rawValue, position.rawValue, radius)
	}
	
	@inlinable public func contains(_ point: Vector2) -> Bool {
		CheckCollisionPointCircle(point.rawValue, position.rawValue, radius)
	}
	
	@inlinable public func collided(with other: Rectangle) -> Bool {
		CheckCollisionCircleRec(position.rawValue, radius, other.rawValue)
	}
	
	@inlinable public func collided(with other: Circle) -> Bool {
		CheckCollisionCircles(position.rawValue, radius, other.position.rawValue, other.radius)
	}
	
//	@inlinable public func willCollide(with other: Rectangle, at velocity: Vector2f) -> Bool {
		// TODO: Consider velocity-based collision methods?
//	}
	
}
