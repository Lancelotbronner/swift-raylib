//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-17.
//

import raylib

public struct PixelFormat: RawRepresentable {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}

	public init(_ pixelFormat: raylib.PixelFormat) {
		self.init(rawValue: pixelFormat.rawValue.toInt32)
	}

	/// Grayscale, no alpha, 8 bpp, uncompressed
	public static let w8 = Self(PIXELFORMAT_UNCOMPRESSED_GRAYSCALE)

	/// Grayscale, 8-bit alpha, 16 bpp, uncompressed
	public static let wa8 = Self(PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA)

	/// RGB, no alpha, 16 bpp, uncompressed
	public static let r5g6b5 = Self(PIXELFORMAT_UNCOMPRESSED_R5G6B5)

	/// RGB, no alpha, 24 bpp, uncompressed
	public static let rgb8 = Self(PIXELFORMAT_UNCOMPRESSED_R8G8B8)

	/// RGBA, 1-bit alpha, 16 bpp, uncompressed
	public static let rgb5a1 = Self(PIXELFORMAT_UNCOMPRESSED_R5G5B5A1)

	/// RGBA, 4-bit alpha, 16 bpp, uncompressed
	public static let rgba4 = Self(PIXELFORMAT_UNCOMPRESSED_R4G4B4A4)

	/// RGBA, 8-bit alpha, 32 bpp, uncompressed
	public static let rgba8 = Self(PIXELFORMAT_UNCOMPRESSED_R8G8B8A8)

	/// red float, no alpha, 32 bpp, uncompressed
	public static let r32f = Self(PIXELFORMAT_UNCOMPRESSED_R32)

	/// RGB floats, no alpha, 96 bpp, uncompressed
	public static let rgb32f = Self(PIXELFORMAT_UNCOMPRESSED_R32G32B32)

	/// RGBA floats, no alpha, 112 bpp, uncompressed
	public static let rgba32f = Self(PIXELFORMAT_UNCOMPRESSED_R32G32B32A32)

	/// RGB, no alpha, 4 bpp, DXT1 compression
	public static let dxt1 = Self(PIXELFORMAT_COMPRESSED_DXT1_RGB)

	/// RGBA, 1-bit alpha, 4 bpp, DXT1 compression
	public static let dxt1WithAlpha = Self(PIXELFORMAT_COMPRESSED_DXT1_RGBA)

	/// RGBA, 4-bit alpha, 8 bpp, DXT3 compression
	public static let dxt3WithAlpha = Self(PIXELFORMAT_COMPRESSED_DXT3_RGBA)

	/// RGBA, 4-bit alpha, 8 bpp, DXT5 compression
	public static let dxt5WithAlpha = Self(PIXELFORMAT_COMPRESSED_DXT5_RGBA)

	/// RGB, no alpha, 4 bpp, ETC1 compression
	public static let etc1 = Self(PIXELFORMAT_COMPRESSED_ETC1_RGB)

	/// RGB, no alpha, 4 bpp, ETC2 compression
	public static let etc2 = Self(PIXELFORMAT_COMPRESSED_ETC2_RGB)

	/// RGB, 4-bit alpha, 8 bpp, ETC2 compression
	public static let etc2WithAlpha = Self(PIXELFORMAT_COMPRESSED_PVRT_RGB)

	/// RGB, no alpha, 4 bpp, PVRT compression
	public static let pvrt = Self(PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA)

	/// RGBA, 1-bit alpha, 4 bpp, PVRT compression
	public static let pvrtWithAlpha = Self(PIXELFORMAT_COMPRESSED_PVRT_RGBA)

	/// RGBA, alpha, 8 bpp, ASTC 4x4 compression
	public static let astc4 = Self(PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA)

	/// RGBA, alpha, 2 bpp, ASTC 8x8 compression
	public static let astc8 = Self(PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA)
	
}

public enum ResizeAlgorithm {

	/// Bicubic scaling algorithm
	case bicubic

	/// Nearest-Neighbor scaling algorithm
	case nearest

	/// Fill
	case fill(offset: Point2, color: Color)
}
