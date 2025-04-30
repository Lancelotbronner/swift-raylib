//
//  Image+Generation.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-18.
//

import raylib

public extension Image {
	
	//MARK: - Color

	@inlinable static func color(size width: Int, by height: Int, of color: Color) -> Image {
		Image(rawValue: GenImageColor(width.toInt32, height.toInt32, color.rawValue))
	}

	@inlinable static func checked(size width: Int, by height: Int, tiles tilesX: Int, _ tilesY: Int, colors color1: Color, _ color2: Color) -> Image {
		Image(rawValue: GenImageChecked(width.toInt32, height.toInt32, tilesX.toInt32, tilesY.toInt32, color1.rawValue, color2.rawValue))
	}

	//MARK: - Linear Gradient

	@inlinable static func linearGradient(size width: Int, by height: Int, direction: Angle, from start: Color, to end: Color) -> Image {
		Image(rawValue: GenImageGradientLinear(width.toInt32, height.toInt32, direction.degrees.rounded().toInt32, start.rawValue, end.rawValue))
	}

	@inlinable static func horizontalGradient(size width: Int, by height: Int, from left: Color, to right: Color) -> Image {
		linearGradient(size: width, by: height, direction: .degrees(90), from: left, to: right)
	}

	@inlinable static func verticalGradient(size width: Int, by height: Int, from left: Color, to right: Color) -> Image {
		linearGradient(size: width, by: height, direction: .degrees(0), from: left, to: right)
	}

	//MARK: - Radial Gradient

	@inlinable static func radialGradient(size width: Int, by height: Int, density: Float = 0, from inner: Color, to outer: Color) -> Image {
		Image(rawValue: GenImageGradientRadial(width.toInt32, height.toInt32, density, inner.rawValue, outer.rawValue))
	}

	@inlinable static func squareGradient(size width: Int, by height: Int, density: Float = 0, from inner: Color, to outer: Color) -> Image {
		Image(rawValue: GenImageGradientSquare(width.toInt32, height.toInt32, density, inner.rawValue, outer.rawValue))
	}

	//MARK: - Noise

	@inlinable static func whiteNoise(size width: Int, by height: Int, factor: Float) -> Image {
		Image(rawValue: GenImageWhiteNoise(width.toInt32, height.toInt32, factor))
	}

	@inlinable static func perlinNoise(size width: Int, by height: Int, offset offsetX: Int, _ offsetY: Int, scale: Float) -> Image {
		Image(rawValue: GenImagePerlinNoise(width.toInt32, height.toInt32, offsetX.toInt32, offsetY.toInt32, scale))
	}

	//MARK: - Text

	@inlinable static func text(size width: Int, by height: Int, _ string: String) -> Image {
		Image(rawValue: GenImageText(width.toInt32, height.toInt32, string))
	}

//	@inlinable public static func fontAtlas(size width: Int, by height: Int, _ string: String) -> Image {
	//TODO: GenImageFontAtlas
//		Image(rawValue: GenImageFontAtlas(<#T##glyphs: UnsafePointer<GlyphInfo>!##UnsafePointer<GlyphInfo>!#>, <#T##glyphRecs: UnsafeMutablePointer<UnsafeMutablePointer<Rectangle>?>!##UnsafeMutablePointer<UnsafeMutablePointer<Rectangle>?>!#>, <#T##glyphCount: Int32##Int32#>, <#T##fontSize: Int32##Int32#>, <#T##padding: Int32##Int32#>, <#T##packMethod: Int32##Int32#>))
//	}

	//MARK: - Algorithms

	@inlinable static func cellular(size width: Int, by height: Int, cell: Int) -> Image {
		Image(rawValue: GenImageCellular(width.toInt32, height.toInt32, cell.toInt32))
	}
	
}
