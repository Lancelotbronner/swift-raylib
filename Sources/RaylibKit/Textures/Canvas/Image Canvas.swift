//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-12.
//

import CRaylib

//MARK: - Image Canvas

public struct Canvas {
	
	//MARK: Properties
	
	@usableFromInline var underlying: UnsafeMutablePointer<CRaylib.Image>
	
	//MARK: Computed Properties
	
	@inlinable public var wire: WireCanvas {
		WireCanvas(to: underlying)
	}
	
	//MARK: Initialization
	
	@usableFromInline init(to image: UnsafeMutablePointer<CRaylib.Image>) {
		underlying = image
	}
	
	//MARK: Canvas Methods
	
	/// Clear image background with given color
	@inlinable public mutating func clear(to color: Color = Renderer.color) {
		ImageClearBackground(underlying, color.toRaylib)
	}
	
	//MARK: Pixel Methods
	
	/// Draw pixel within an image
	@inlinable public mutating func pixel(at x: Int, _ y: Int, color: Color = Renderer.color) {
		ImageDrawPixel(underlying, x.toInt32, y.toInt32, color.toRaylib)
	}
	
	/// Draw pixel within an image (Vector version)
	@inlinable public mutating func pixel(at position: Vector2i, color: Color = Renderer.color) {
		pixel(at: position.x, position.y, color: color)
	}
	
	//MARK: Line Methods
	
	/// Draw line within an image
	@inlinable public mutating func line(from sx: Int, _ sy: Int, to ex: Int, _ ey: Int, color: Color = Renderer.color) {
		ImageDrawLine(underlying, sx.toInt32, sy.toInt32, ex.toInt32, ey.toInt32, color.toRaylib)
	}
	
	/// Draw line within an image (Vector version)
	@inlinable public mutating func line(from start: Vector2i, to end: Vector2i, color: Color = Renderer.color) {
		line(from: start.x, start.y, to: start.x, start.y, color: color)
	}
	
	//MARK: Circle Methods
	
	/// Draw circle within an image
	@inlinable public mutating func circle(at x: Int, _ y: Int, radius: Int, color: Color = Renderer.color) {
		ImageDrawCircle(underlying, x.toInt32, y.toInt32, radius.toInt32, color.toRaylib)
	}
	
	/// Draw circle within an image (Vector version)
	@inlinable public mutating func circle(at center: Vector2i, radius: Int, color: Color = Renderer.color) {
		circle(at: center.x, center.y, radius: radius, color: color)
	}
	
	/// Draw circle within an image (Shape version)
	@inlinable public mutating func circle(_ shape: Circle, color: Color = Renderer.color) {
		circle(at: shape.position.toInt, radius: shape.radius.toInt, color: color)
	}
	
	//MARK: Rectangle Methods
	
	/// Draw rectangle within an image
	@inlinable public mutating func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.color) {
		ImageDrawRectangle(underlying, x.toInt32, y.toInt32, width.toInt32, height.toInt32, color.toRaylib)
	}
	
	/// Draw rectangle within an image (Vector version)
	@inlinable public mutating func rectangle(at position: Vector2i, size: Vector2i, color: Color = Renderer.color) {
		rectangle(at: position.x, position.y, size: size.x, size.y, color: color)
	}
	
	/// Draw rectangle within an image (Shape version)
	@inlinable public mutating func rectangle(_ shape: Rectangle, color: Color = Renderer.color) {
		rectangle(at: shape.position.toInt, size: shape.size.toInt, color: color)
	}
	
	//MARK: Image Methods
	
	/// Draw a source image within a destination image
	@inlinable public mutating func image(from source: Rectangle, of other: Image, to destination: Rectangle, tint: Color = Renderer.tint) {
		ImageDraw(underlying, other.toRaylib, source.toRaylib, destination.toRaylib, tint.toRaylib)
	}
	
	//MARK: Text Methods
	
	/// Draw text within an image
	@inlinable public mutating func text(_ string: String, at x: Int, _ y: Int, size: Int = Renderer.pointSize, color: Color = Renderer.textColor) {
		ImageDrawText(underlying, string, x.toInt32, y.toInt32, size.toInt32, color.toRaylib)
	}
	
	/// Draw text within an image
	@inlinable public mutating func text(_ string: String, at x: Int, _ y: Int, size: Int = Renderer.pointSize, spacing: Int, using font: Font, color: Color = Renderer.textColor) {
		ImageDrawTextEx(underlying, font.toRaylib, string, Vector2f(x.toFloat, y.toFloat).toRaylib, size.toFloat, spacing.toFloat, color.toRaylib)
	}
	
}
