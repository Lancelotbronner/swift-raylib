//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import CRaylib

//MARK: - Rectangle

public struct Rectangle {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var size: Vector2f
	
	//MARK: Computed Properties
	
	@inlinable public var x: Float {
		get { position.x }
		set { position.x = newValue }
	}
	
	@inlinable public var y: Float {
		get { position.y }
		set { position.y = newValue }
	}
	
	@inlinable public var width: Float {
		get { size.x }
		set { size.x = newValue }
	}
	
	@inlinable public var height: Float {
		get { size.y }
		set { size.y = newValue }
	}

	//MARK: Computed Point Properties

	@usableFromInline var startX: Float { x }
	@usableFromInline var centerX: Float { x + width / 2 }
	@usableFromInline var endX: Float { x + width }
	@usableFromInline var startY: Float { y }
	@usableFromInline var centerY: Float { y + height / 2 }
	@usableFromInline var endY: Float { y + height }

	@inlinable public var topLeft: Vector2f {
		Vector2f(startX, startY)
	}

	@inlinable public var top: Vector2f {
		Vector2f(centerX, startY)
	}

	@inlinable public var topRight: Vector2f {
		Vector2f(endX, startY)
	}

	@inlinable public var left: Vector2f {
		Vector2f(startX, centerY)
	}

	@inlinable public var center: Vector2f {
		get { Vector2f(centerX, centerY) }
		set { position = newValue - size / 2 }
	}

	@inlinable public var right: Vector2f {
		Vector2f(endX, centerY)
	}

	@inlinable public var bottomLeft: Vector2f {
		Vector2f(startX, endY)
	}

	@inlinable public var bottom: Vector2f {
		Vector2f(centerX, endY)
	}

	@inlinable public var bottomRight: Vector2f {
		Vector2f(endX, endY)
	}
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, size: Vector2f) {
		self.position = position
		self.size = size
	}
	
	@inlinable public init(at x: Float, _ y: Float, size width: Float, _ height: Float) {
		self.init(at: Vector2f(x, y), size: Vector2f(width, height))
	}
	
	//MARK: Conversion Methods
	
	@inlinable public func rounded(to cornerRadius: Float, segments: Int = 0) -> RoundedRectangle {
		RoundedRectangle(round: self, by: cornerRadius, segments: segments)
	}
	
	//MARK: Translation Methods
	
	@inlinable public mutating func translate(by step: Vector2f) {
		position += step
	}
	
	@inlinable public func translated(by step: Vector2f) -> Rectangle {
		Rectangle(at: position + step, size: size)
	}
	
	//MARK: Collision Methods
	
	@inlinable public func contains(_ x: Float, _ y: Float) -> Bool {
		CheckCollisionPointRec(Vector2f(x, y).toRaylib, toRaylib)
	}
	
	@inlinable public func contains(_ point: Vector2f) -> Bool {
		CheckCollisionPointRec(point.toRaylib, toRaylib)
	}
	
	@inlinable public func collided(with other: Rectangle) -> Bool {
		CheckCollisionRecs(toRaylib, other.toRaylib)
	}
	
	@inlinable public func collided(with other: Circle) -> Bool {
		CheckCollisionCircleRec(other.position.toRaylib, other.radius, toRaylib)
	}
	
	@inlinable public func collision(with other: Rectangle) -> Rectangle {
		GetCollisionRec(toRaylib, other.toRaylib).toSwift
	}
	
}

//MARK: - Raylib Integration

extension Rectangle {
	
	@_transparent public var toRaylib: CRaylib.Rectangle {
		CRaylib.Rectangle(x: x, y: y, width: width, height: height)
	}
	
}

extension CRaylib.Rectangle {
	
	@_transparent public var toSwift: Rectangle {
		Rectangle(at: x, y, size: width, height)
	}
	
}
