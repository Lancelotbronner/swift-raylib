//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct BlendMode: RawRepresentable {
	public let rawValue: UInt32

	@inlinable public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}

	@inlinable public init(_ blendMode: raylib.BlendMode) {
		self.init(rawValue: blendMode.rawValue)
	}

	/// The default blend mode
	public static let `default` = alpha
	
	/// Blend textures considering alpha (default)
	public static let alpha = Self(BLEND_ALPHA)

	/// Blend textures adding colors
	public static let additive = Self(BLEND_ADDITIVE)

	/// Blend textures multiplying colors
	public static let multiplied = Self(BLEND_MULTIPLIED)

	/// Blend textures adding colors (alternative)
	public static let addColors = Self(BLEND_ADD_COLORS)

	/// Blend textures subtracting colors (alternative)
	public static let subtract = Self(BLEND_SUBTRACT_COLORS)

	/// Blend premultiplied textures considering alpha
	public static let premultiplied = Self(BLEND_ALPHA_PREMULTIPLY)

	/// Blend textures using custom src/dst factors (use rlSetBlendMode())
	public static let custom = Self(BLEND_CUSTOM)
	// TODO: Implement custom with rlSetBlendMode()

}
