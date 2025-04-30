//
//  BlendMode.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct BlendMode: RawRepresentable, Sendable {
	public let rawValue: UInt32

	@inlinable public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}
}

public extension BlendMode {

	@inlinable init(_ blendMode: raylib.BlendMode) {
		self.init(rawValue: blendMode.rawValue)
	}

	//MARK: - Modes

	/// The default blend mode
	static let `default` = alpha
	
	/// Blend textures considering alpha (default)
	static let alpha = Self(BLEND_ALPHA)

	/// Blend textures adding colors
	static let additive = Self(BLEND_ADDITIVE)

	/// Blend textures multiplying colors
	static let multiplied = Self(BLEND_MULTIPLIED)

	/// Blend textures adding colors (alternative)
	static let addColors = Self(BLEND_ADD_COLORS)

	/// Blend textures subtracting colors (alternative)
	static let subtractColors = Self(BLEND_SUBTRACT_COLORS)

	/// Blend premultiplied textures considering alpha
	static let alphaPremultiply = Self(BLEND_ALPHA_PREMULTIPLY)

	//MARK: - Custom Modes

	/// Blend textures using custom src/dst factors (use rlSetBlendMode())
	static let custom = Self(BLEND_CUSTOM)
	// TODO: Implement custom with rlSetBlendMode()

	//MARK: - Rendering

	/// Shortcut for ``Renderer/blend(_:draw:)``.
	@_transparent func callAsFunction(_ draw: () -> Void) {
		Renderer.blend(self, draw: draw)
	}

}
