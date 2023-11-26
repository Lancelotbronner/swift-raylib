//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-11-26.
//

import raylib

public struct TextureFilter: RawRepresentable {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}

	public init(_ textureFilter: raylib.TextureFilter) {
		self.init(rawValue: textureFilter.rawValue.toInt32)
	}

	/// No filter, just pixel approximation
	public static let point = Self(TEXTURE_FILTER_POINT)

	/// Linear filtering
	public static let bilinear = Self(TEXTURE_FILTER_BILINEAR)

	/// Trilinear filtering (linear with mipmaps)
	public static let trilinear = Self(TEXTURE_FILTER_TRILINEAR)

	/// Anisotropic filtering 4x
	public static let anisotropic4x = Self(TEXTURE_FILTER_ANISOTROPIC_4X)

	/// Anisotropic filtering 8x
	public static let anisotropic8x = Self(TEXTURE_FILTER_ANISOTROPIC_8X)

	/// Anisotropic filtering 16x
	public static let anisotropic16x = Self(TEXTURE_FILTER_ANISOTROPIC_16X)

}

public struct TextureWrap: RawRepresentable {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}

	public init(_ textureWrap: raylib.TextureWrap) {
		self.init(rawValue: textureWrap.rawValue.toInt32)
	}

	/// Repeats texture in tiled mode
	public static let `repeat` = Self(TEXTURE_WRAP_REPEAT)

	/// Clamps texture to edge pixel in tiled mode
	public static let clamp = Self(TEXTURE_WRAP_CLAMP)

	/// Mirrors and repeats the texture in tiled mode
	public static let mirroredRepeat = Self(TEXTURE_WRAP_MIRROR_REPEAT)

	/// Mirrors and clamps to border the texture in tiled mode
	public static let mirroredClamp = Self(TEXTURE_WRAP_MIRROR_CLAMP)

}
