//
//  Touch.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Touch {
	public let index: Int

	@usableFromInline init(index: Int) {
		self.index = index
	}
}

public extension Touch {
	/// Get touch position X for touch point 0 (relative to screen size)
	@inlinable static var x: Int {
		Int(GetTouchX())
	}

	/// Get touch position Y for touch point 0 (relative to screen size)
	@inlinable static var y: Int {
		Int(GetTouchY())
	}

	/// Get touch position XY for a touch point index (relative to screen size)
	@inlinable static var position: Vector2 {
		Vector2(rawValue: GetTouchPosition(0))
	}

	/// Get number of touch points
	@inlinable static var count: Int {
		Int(GetTouchPointCount())
	}

	/// Get touch point identifier for given index
	@inlinable static func id(at index: Int) -> Int {
		Int(GetTouchPointId(Int32(index)))
	}

	// Get touch position XY for a touch point index (relative to screen size)
	@inlinable static func position(at index: Int) -> Vector2 {
		Vector2(rawValue: GetTouchPosition(Int32(index)))
	}

	@inlinable static subscript(_ index: Int) -> Touch {
		Touch(index: index)
	}
}

public extension Touch {
	@inlinable var id: Int {
		Touch.id(at: index)
	}

	@inlinable var position: Vector2 {
		Touch.position(at: index)
	}
}
