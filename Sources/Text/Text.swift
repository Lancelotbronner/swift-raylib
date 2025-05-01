//
//  Text.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Text {}

public extension Text {
	// Measure string width for default font
	@inlinable static func measure(_ text: String, size: Float = Renderer.pointSize) -> Int {
		MeasureText(text, size.rounded().toInt32).toInt
	}
}
