//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-18.
//

import CRaylib

extension Image {
	
	//MARK: Image Generation
	
	@inlinable public static func color(size width: Int, by height: Int, of color: Color) -> Image {
		GenImageColor(width.toInt32, height.toInt32, color.toRaylib).toSwift
	}
	
	@inlinable public static func gradientV(size width: Int, by height: Int, from top: Color, to bottom: Color) -> Image {
		GenImageGradientV(width.toInt32, height.toInt32, top.toRaylib, bottom.toRaylib).toSwift
	}
	
	@inlinable public static func gradientH(size width: Int, by height: Int, from left: Color, to right: Color) -> Image {
		GenImageGradientH(width.toInt32, height.toInt32, left.toRaylib, right.toRaylib).toSwift
	}
	
	@inlinable public static func gradientRadial(size width: Int, by height: Int, density: Float = 0, from inner: Color, to outer: Color) -> Image {
		GenImageGradientRadial(width.toInt32, height.toInt32, density, inner.toRaylib, outer.toRaylib).toSwift
	}
	
	@inlinable public static func checked(size width: Int, by height: Int, tiles tilesX: Int, _ tilesY: Int, colors color1: Color, _ color2: Color) -> Image {
		GenImageChecked(width.toInt32, height.toInt32, tilesX.toInt32, tilesY.toInt32, color1.toRaylib, color2.toRaylib).toSwift
	}
	
	@inlinable public static func whiteNoise(size width: Int, by height: Int, factor: Float) -> Image {
		GenImageWhiteNoise(width.toInt32, height.toInt32, factor).toSwift
	}
	
	@inlinable public static func cellular(size width: Int, by height: Int, cell: Int) -> Image {
		GenImageCellular(width.toInt32, height.toInt32, cell.toInt32).toSwift
	}
	
}
