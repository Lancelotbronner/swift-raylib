//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

import raylib

extension Renderer2D {
	
	//MARK: - Pixel

	/// Draw a pixel
	@inlinable public static func pixel(at x: Int, _ y: Int, _ color: Color) {
		DrawPixel(x.toInt32, y.toInt32, color.rawValue)
	}
	
	/// Draw a pixel (Vector version)
	@inlinable public static func pixel(at position: Vector2, _ color: Color) {
		DrawPixel(position.x.toInt32, position.y.toInt32, color.rawValue)
	}
	
	//MARK: - Line

	/// Draw a line (Vector version)
	@inlinable public static func line(from start: Vector2, to end: Vector2, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
		DrawLineEx(start.rawValue, end.rawValue, thickness, color.rawValue)
	}

	/// Draw a line
	@inlinable public static func line(from startX: Float, _ startY: Float, to endX: Float, _ endY: Float, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
		DrawLineEx(Vector2(startX, startY).rawValue, Vector2(endX.toFloat, endY.toFloat).rawValue, thickness, color.rawValue)
	}
	
	/// Draw lines sequence
	@inlinable public static func lines(_ points: [Vector2], color: Color = Renderer.color) {
		points.withContiguousStorageIfAvailable { buffer in
			var tmp = buffer.baseAddress!.pointee.rawValue
			DrawLineStrip(&tmp, points.count.toInt32, color.rawValue)
		}
	}
	
	//MARK: - Bezier

	/// Draw a line using cubic-bezier curves in-out
	@inlinable public static func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
		let start = Vector2(startX.toFloat, startY.toFloat)
		let end = Vector2(endX.toFloat, endY.toFloat)
		DrawLineBezier(start.rawValue, end.rawValue, thickness, color.rawValue)
	}
	
//	/// Draw a line using cubic-bezier curves in-out (Vector version
//	@inlinable public static func bezier(from start: Vector2f, to end: Vector2f, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
//		DrawLineBezier(start.toRaylib, end.toRaylib, thickness, color.toRaylib)
//	}
//	
//	/// Draw line using quadratic bezier curves with a control point
//	@inlinable public static func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, control controlX: Int, _ controlY: Int, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
//		DrawLineBezierQuad(Vector2(startX.toFloat, startY.toFloat).toRaylib, Vector2f(endX.toFloat, endY.toFloat).toRaylib, Vector2f(controlX.toFloat, controlY.toFloat).toRaylib, thickness, color.toRaylib)
//	}
//	
//	/// Draw line using quadratic bezier curves with a control point (Vector version)
//	@inlinable public static func bezier(from start: Vector2f, to end: Vector2f, control: Vector2f, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
//		DrawLineBezierQuad(start.toRaylib, end.toRaylib, control.toRaylib, thickness, color.toRaylib)
//	}
//	
//	/// Draw line using quadratic bezier curves with two control point
//	@inlinable public static func bezier(from startX: Int, _ startY: Int, to endX: Int, _ endY: Int, control control1X: Int, _ control1Y: Int, and control2X: Int, _ control2Y: Int, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
//		bezier(from: Vector2f(startX.toFloat, startY.toFloat), to: Vector2f(endX.toFloat, endY.toFloat), control: Vector2f(control1X.toFloat, control1Y.toFloat), and: Vector2f(control2X.toFloat, control2Y.toFloat), thickness: thickness, color: color)
//	}
//	
//	/// Draw line using quadratic bezier curves with two control point (Vector version)
//	@inlinable public static func bezier(from start: Vector2f, to end: Vector2f, control control1: Vector2f, and control2: Vector2f, thickness: Float = Renderer.thickness, color: Color = Renderer.color) {
//		DrawLineBezierCubic(start.toRaylib, end.toRaylib, control1.toRaylib, control2.toRaylib, thickness, color.toRaylib)
//	}

}
