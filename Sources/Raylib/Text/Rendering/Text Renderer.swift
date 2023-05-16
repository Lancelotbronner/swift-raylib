//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Renderer

extension Renderer2D {
	
	//MARK: Text
	
	@inlinable public static func fps(at x: Int, _ y: Int) {
		DrawFPS(x.toInt32, y.toInt32)
	}
	
	@inlinable public static func text(_ value: String, at x: Int, _ y: Int, size: Int = Renderer.pointSize, color: Color = Renderer.textColor) {
		DrawText(value, x.toInt32, y.toInt32, size.toInt32, color.toRaylib)
	}
	
	@inlinable public static func text(_ value: String, at x: Int, _ y: Int, size: Int = Renderer.pointSize, alignment: TextAlignment = Renderer.textAlignment, color: Color = Renderer.textColor) {
		DrawText(value, (x + alignment.offset(of: value, at: size)).toInt32, y.toInt32, size.toInt32, color.toRaylib)
	}
	
	@inlinable public static func text(center value: String, offset x: Int = 0, _ y: Int = 0, size: Int = Renderer.pointSize, color: Color = Renderer.textColor) {
		text(value, at: (Window.width - Text.measure(value, size: size)) / 2 + x, (Window.height - size) / 2 + y, size: size, color: color)
	}
	
}
