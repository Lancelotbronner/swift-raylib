//
//  Line.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-09.
//

import raylib

public struct Line: Shape {
	public var start: Vector2
	public var end: Vector2

	public init(from start: Vector2, to end: Vector2) {
		self.start = start
		self.end = end
	}
}

public extension Line {

	@inlinable var frame: Rectangle {
		let minX = min(start.x, end.x)
		let maxX = max(start.x, end.x)
		let minY = min(start.y, end.y)
		let maxY = max(start.y, end.y)
		return Rectangle(at: minX, minY, size: maxX - minX, maxY - minY)
	}

	//MARK: Collision Methods
	
	@inlinable func collision(with other: Line) -> Vector2? {
		var tmp = Vector2One()
		let collision = CheckCollisionLines(start.rawValue, end.rawValue, other.start.rawValue, other.end.rawValue, &tmp) ? tmp : nil
		guard let collision else { return nil }
		return Vector2(rawValue: collision)
	}
	
}
