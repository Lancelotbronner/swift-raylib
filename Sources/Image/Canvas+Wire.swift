//
//  Canvas+Wire.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2022-01-12.
//

import raylib

public struct WireCanvas: RawRepresentable {
	public let rawValue: UnsafeMutablePointer<raylib.Image>

	public init(rawValue: UnsafeMutablePointer<raylib.Image>) {
		self.rawValue = rawValue
	}
}

public extension WireCanvas {

	//MARK: - Rectangle Methods

	/// Draw rectangle lines within an image
	@inlinable mutating func rectangle(_ shape: Rectangle, thickness: Int, color: Color) {
		ImageDrawRectangleLines(rawValue, shape.rawValue, thickness.toInt32, color.rawValue)
	}
	
}
