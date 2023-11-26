//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

import raylib

public enum TextAlignment {
	case left
	case center
	case right
	
	@inlinable func offset(of text: String, at size: Float = Renderer.pointSize) -> Int {
		switch self {
		case .left: return 0
		case .center: return Text.measure(text, size: size) / 2
		case .right: return -Text.measure(text, size: size)
		}
	}

	@inlinable func offset(of text: String, using font: Font, at size: Float = Renderer.pointSize, spacing: Float) -> Vector2f {
		switch self {
		case .left: return Vector2f.zero
		case .center: return font.measure(text, at: size, spacing: spacing) / 2
		case .right: return -font.measure(text, at: size, spacing: spacing)
		}
	}
}
