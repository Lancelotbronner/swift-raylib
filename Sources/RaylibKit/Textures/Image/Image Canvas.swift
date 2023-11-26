//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-12.
//

import raylib

public struct Canvas {
	public let rawValue: UnsafeMutablePointer<raylib.Image>

	public init(rawValue: UnsafeMutablePointer<raylib.Image>) {
		self.rawValue = rawValue
	}

	@inlinable public var wire: WireCanvas {
		WireCanvas(rawValue: rawValue)
	}
	
	//MARK: - Whole Canvas

	/// Clear image background with given color
	@inlinable public mutating func clear(to color: Color = Renderer.color) {
		ImageClearBackground(rawValue, color.rawValue)
	}
	
	//MARK: - Pixel

	/// Draw pixel within an image
	@inlinable public mutating func pixel(at x: Int, _ y: Int, color: Color = Renderer.color) {
		ImageDrawPixel(rawValue, x.toInt32, y.toInt32, color.rawValue)
	}
	
	/// Draw pixel within an image (Vector version)
	@inlinable public mutating func pixel(at position: Vector2i, color: Color = Renderer.color) {
		pixel(at: position.x, position.y, color: color)
	}
	
	//MARK: - Lines

	/// Draw line within an image
	@inlinable public mutating func line(from sx: Int, _ sy: Int, to ex: Int, _ ey: Int, color: Color = Renderer.color) {
		ImageDrawLine(rawValue, sx.toInt32, sy.toInt32, ex.toInt32, ey.toInt32, color.rawValue)
	}
	
	/// Draw line within an image (Vector version)
	@inlinable public mutating func line(from start: Vector2i, to end: Vector2i, color: Color = Renderer.color) {
		line(from: start.x, start.y, to: start.x, start.y, color: color)
	}
	
	//MARK: - Circle

	/// Draw circle within an image
	@inlinable public mutating func circle(at x: Int, _ y: Int, radius: Int, color: Color = Renderer.color) {
		ImageDrawCircle(rawValue, x.toInt32, y.toInt32, radius.toInt32, color.rawValue)
	}
	
	/// Draw circle within an image (Vector version)
	@inlinable public mutating func circle(at center: Vector2i, radius: Int, color: Color = Renderer.color) {
		circle(at: center.x, center.y, radius: radius, color: color)
	}
	
	/// Draw circle within an image (Shape version)
	@inlinable public mutating func circle(_ shape: Circle, color: Color = Renderer.color) {
		circle(at: shape.position.toInt, radius: shape.radius.toInt, color: color)
	}
	
	//MARK: - Rectangle

	/// Draw rectangle within an image
	@inlinable public mutating func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.color) {
		ImageDrawRectangle(rawValue, x.toInt32, y.toInt32, width.toInt32, height.toInt32, color.rawValue)
	}
	
	/// Draw rectangle within an image (Vector version)
	@inlinable public mutating func rectangle(at position: Vector2i, size: Vector2i, color: Color = Renderer.color) {
		rectangle(at: position.x, position.y, size: size.x, size.y, color: color)
	}
	
	/// Draw rectangle within an image (Shape version)
	@inlinable public mutating func rectangle(_ shape: Rectangle, color: Color = Renderer.color) {
		rectangle(at: shape.position.toInt, size: shape.size.toInt, color: color)
	}
	
	//MARK: - Image

	/// Draw a source image within a destination image
	@inlinable public mutating func image(from source: Rectangle, of other: Image, to destination: Rectangle, tint: Color = Renderer.tint) {
		ImageDraw(rawValue, other.rawValue, source.rawValue, destination.rawValue, tint.rawValue)
	}
	
	//MARK: - Text

	/// Draw text within an image
	@inlinable public mutating func text(_ string: String, at x: Int, _ y: Int, size: Float = Renderer.pointSize, color: Color = Renderer.textColor) {
		ImageDrawText(rawValue, string, x.toInt32, y.toInt32, size.toInt32, color.rawValue)
	}
	
	/// Draw text within an image
	@inlinable public mutating func text(_ string: String, at x: Int, _ y: Int, size: Float = Renderer.pointSize, spacing: Float, using font: Font, color: Color = Renderer.textColor) {
		ImageDrawTextEx(rawValue, font.rawValue, string, Vector2f(x.toFloat, y.toFloat).toRaylib, size, spacing, color.rawValue)
	}
	
}
