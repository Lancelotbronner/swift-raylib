//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import raylib

public struct Triangle {
	
	public var a: Vector2
	public var b: Vector2
	public var c: Vector2
	
	@inlinable public init(_ a: Vector2, _ b: Vector2, _ c: Vector2) {
		self.a = a
		self.b = b
		self.c = c
	}

	@inlinable public var frame: Rectangle {
		let minX = min(a.x, b.x, c.x)
		let maxX = max(a.x, b.x, c.x)
		let minY = min(a.y, b.y, c.y)
		let maxY = max(a.y, b.y, c.y)
		return Rectangle(at: minX, minY, size: maxX - minX, maxY - minY)
	}

	//MARK: - Collisions
	
	@inlinable public func contains(_ x: Int, _ y: Int) -> Bool {
		CheckCollisionPointTriangle(Vector2(x, y).rawValue, a.rawValue, b.rawValue, c.rawValue)
	}
	
	@inlinable public func contains(_ point: Vector2) -> Bool {
		CheckCollisionPointTriangle(point.rawValue, a.rawValue, b.rawValue, c.rawValue)
	}
	
}
