//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import CRaylib

//MARK: - Circle

public struct Circle {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var radius: Float
	
	//MARK: Computed Properties
	
	@inlinable public var frame: Rectangle {
		Rectangle(at: position - radius, size: Vector2f(diameter))
	}
	
	@inlinable public var left: Vector2f {
		Vector2f(position.x - radius, position.y)
	}
	
	@inlinable public var right: Vector2f {
		Vector2f(position.x + radius, position.y)
	}
	
	@inlinable public var top: Vector2f {
		Vector2f(position.x, position.y - radius)
	}
	
	@inlinable public var bottom: Vector2f {
		Vector2f(position.x, position.y + radius)
	}
	
	@inlinable public var diameter: Float {
		radius * 2
	}
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, radius: Float) {
		self.position = position
		self.radius = radius
	}
	
	@inlinable public init(at x: Float, _ y: Float, radius: Float) {
		self.init(at: Vector2f(x, y), radius: radius)
	}
	
	//MARK: Translation Methods
	
	@inlinable public mutating func translate(by step: Vector2f) {
		position += step
	}
	
	@inlinable public func translated(by step: Vector2f) -> Circle {
		Circle(at: position + step, radius: radius)
	}
	
	@inlinable public func translated(by x: Float, _ y: Float) -> Circle {
		translated(by: Vector2f(x, y))
	}
	
	//MARK: Collision Methods
	
	@inlinable public func contains(_ x: Int, _ y: Int) -> Bool {
		CheckCollisionPointCircle(Vector2f(x.toFloat, y.toFloat).toRaylib, position.toRaylib, radius)
	}
	
	@inlinable public func contains(_ point: Vector2f) -> Bool {
		CheckCollisionPointCircle(point.toRaylib, position.toRaylib, radius)
	}
	
	@inlinable public func collided(with other: Rectangle) -> Bool {
		CheckCollisionCircleRec(position.toRaylib, radius, other.toRaylib)
	}
	
	@inlinable public func collided(with other: Circle) -> Bool {
		CheckCollisionCircles(position.toRaylib, radius, other.position.toRaylib, other.radius)
	}
	
//	@inlinable public func willCollide(with other: Rectangle, at velocity: Vector2f) -> Bool {
		// TODO: Consider velocity-based collision methods?
//	}
	
}
