//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import raylib

public struct Rectangle: RawRepresentable, Shape {
	public var rawValue: raylib.Rectangle

	public init(rawValue: raylib.Rectangle) {
		self.rawValue = rawValue
	}

	@inlinable public init(at x: Float, _ y: Float, size width: Float, _ height: Float) {
		self.init(rawValue: raylib.Rectangle(x: x, y: y, width: width, height: height))
	}

	@inlinable public init(at position: Vector2, size: Vector2) {
		self.init(at: position.x, position.y, size: size.x, size.y)
	}

	//MARK: - Properties

	@inlinable public var x: Float {
		get { rawValue.x }
		set { rawValue.x = newValue }
	}
	
	@inlinable public var y: Float {
		get { rawValue.y }
		set { rawValue.y = newValue }
	}
	
	@inlinable public var width: Float {
		get { rawValue.width }
		set { rawValue.width = newValue }
	}
	
	@inlinable public var height: Float {
		get { rawValue.height }
		set { rawValue.height = newValue }
	}

	@inlinable public var position: Vector2 {
		get { Vector2(rawValue.x, rawValue.y) }
		set {
			rawValue.x = newValue.x
			rawValue.y = newValue.y
		}
	}

	@inlinable public var size: Vector2 {
		get { Vector2(rawValue.width, rawValue.height) }
		set {
			rawValue.width = newValue.x
			rawValue.height = newValue.y
		}
	}

	@inlinable public var frame: Rectangle {
		self
	}

	//MARK: - Points

	@usableFromInline var startX: Float { x }
	@usableFromInline var centerX: Float { x + width / 2 }
	@usableFromInline var endX: Float { x + width }
	@usableFromInline var startY: Float { y }
	@usableFromInline var centerY: Float { y + height / 2 }
	@usableFromInline var endY: Float { y + height }

	@inlinable public var topLeft: Vector2 {
		Vector2(startX, startY)
	}

	@inlinable public var top: Vector2 {
		Vector2(centerX, startY)
	}

	@inlinable public var topRight: Vector2 {
		Vector2(endX, startY)
	}

	@inlinable public var left: Vector2 {
		Vector2(startX, centerY)
	}

	@inlinable public var center: Vector2 {
		get { Vector2(centerX, centerY) }
		set { position = newValue - size / 2 }
	}

	@inlinable public var right: Vector2 {
		Vector2(endX, centerY)
	}

	@inlinable public var bottomLeft: Vector2 {
		Vector2(startX, endY)
	}

	@inlinable public var bottom: Vector2 {
		Vector2(centerX, endY)
	}

	@inlinable public var bottomRight: Vector2 {
		Vector2(endX, endY)
	}
	
	//MARK: - Conversion

	@inlinable public func rounded(cornerRadius: Float, segments: Int = 0) -> RoundedRectangle {
		RoundedRectangle(round: self, by: cornerRadius, segments: segments)
	}
	
	//MARK: - Translation

	@inlinable public mutating func translate(by step: Vector2) {
		position += step
	}
	
	@inlinable public func translated(by step: Vector2) -> Rectangle {
		Rectangle(at: position + step, size: size)
	}
	
	//MARK: - Collision

	@inlinable public func contains(_ x: Float, _ y: Float) -> Bool {
		CheckCollisionPointRec(Vector2(x, y).rawValue, rawValue)
	}
	
	@inlinable public func contains(_ point: Vector2) -> Bool {
		CheckCollisionPointRec(point.rawValue, rawValue)
	}
	
	@inlinable public func collided(with other: Rectangle) -> Bool {
		CheckCollisionRecs(rawValue, other.rawValue)
	}
	
	@inlinable public func collided(with other: Circle) -> Bool {
		CheckCollisionCircleRec(other.position.rawValue, other.radius, rawValue)
	}
	
	@inlinable public func collision(with other: Rectangle) -> Rectangle {
		Rectangle(rawValue: GetCollisionRec(rawValue, other.rawValue))
	}
	
}
