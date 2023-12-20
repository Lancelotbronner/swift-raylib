//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

extension Renderer2D {
	
	//MARK: - Triangle
	
	@inlinable public static func triangle(_ p1: Vector2, _ p2: Vector2, _ p3: Vector2, color: Color = Renderer.color) {
		DrawTriangle(p1.rawValue, p2.rawValue, p3.rawValue, color.rawValue)
	}

	@inlinable public static func triangle(a x1: Float, _ y1: Float, b x2: Float, _ y2: Float, c x3: Float, _ y3: Float, color: Color = Renderer.color) {
		triangle(Vector2(x1, y1), Vector2(x2, y2), Vector2(x3, y3), color: .violet)
	}
	
	@inlinable public static func triangle(_ shape: Triangle, color: Color = Renderer.color) {
		DrawTriangle(shape.a.rawValue, shape.b.rawValue, shape.c.rawValue, color.rawValue)
	}
	
	//MARK: - Rectangle with Color
	
	@inlinable public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, color: Color = Renderer.color) {
		DrawRectangle(x.toInt32, y.toInt32, width.toInt32, height.toInt32, color.rawValue)
	}
	
	@inlinable public static func rectangle(at position: Vector2, size: Vector2, color: Color = Renderer.color) {
		DrawRectangle(position.x.toInt32, position.y.toInt32, size.x.toInt32, size.y.toInt32, color.rawValue)
	}
	
	@inlinable public static func rectangle(_ shape: Rectangle, color: Color = Renderer.color) {
		DrawRectangleRec(shape.rawValue, color.rawValue)
	}

	//MARK: - Rectangle with Horizontal Gradient
	
	@inlinable public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, gradientH from: Color, _ to: Color) {
		DrawRectangleGradientH(x.toInt32, y.toInt32, width.toInt32, height.toInt32, from.rawValue, to.rawValue)
	}
	
	@inlinable public static func rectangle(at position: Vector2, size: Vector2, gradientH from: Color, _ to: Color) {
		DrawRectangleGradientH(position.x.toInt32, position.y.toInt32, size.x.toInt32, size.y.toInt32, from.rawValue, to.rawValue)
	}
	
	@inlinable public static func rectangle(_ shape: Rectangle, gradientH from: Color, _ to: Color) {
		DrawRectangleGradientH(shape.x.toInt32, shape.y.toInt32, shape.width.toInt32, shape.height.toInt32, from.rawValue, to.rawValue)
	}

	//MARK: - Rectangle with Vertical Gradient
	
	@inlinable public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, gradientV from: Color, _ to: Color) {
		DrawRectangleGradientV(x.toInt32, y.toInt32, width.toInt32, height.toInt32, from.rawValue, to.rawValue)
	}
	
	@inlinable public static func rectangle(at position: Vector2, size: Vector2, gradientV from: Color, _ to: Color) {
		DrawRectangleGradientV(position.x.toInt32, position.y.toInt32, size.x.toInt32, size.y.toInt32, from.rawValue, to.rawValue)
	}
	
	@inlinable public static func rectangle(_ shape: Rectangle, gradientV from: Color, _ to: Color) {
		DrawRectangleGradientV(shape.x.toInt32, shape.y.toInt32, shape.width.toInt32, shape.height.toInt32, from.rawValue, to.rawValue)
	}

	//MARK: - Rectangle with Corner Gradient
	
	@inlinable public static func rectangle(at x: Int, _ y: Int, size width: Int, _ height: Int, gradient topLeft: Color, _ bottomLeft: Color, _ bottomRight: Color, _ topRight: Color) {
		DrawRectangleGradientEx(.init(x: x.toFloat, y: y.toFloat, width: width.toFloat, height: height.toFloat), topLeft.rawValue, bottomLeft.rawValue, bottomRight.rawValue, topRight.rawValue)
	}
	
	@inlinable public static func rectangle(at position: Vector2, size: Vector2, gradient topLeft: Color, _ bottomLeft: Color, _ bottomRight: Color, _ topRight: Color) {
		DrawRectangleGradientEx(.init(x: position.x, y: position.y, width: size.x, height: size.y), topLeft.rawValue, bottomLeft.rawValue, bottomRight.rawValue, topRight.rawValue)
	}
	
	@inlinable public static func rectangle(_ shape: Rectangle, gradient topLeft: Color, _ bottomLeft: Color, _ bottomRight: Color, _ topRight: Color) {
		DrawRectangleGradientEx(shape.rawValue, topLeft.rawValue, bottomLeft.rawValue, bottomRight.rawValue, topRight.rawValue)
	}
	
	//MARK: - Rounded Rectangle
	
	@inlinable public static func roundedRectangle(_ shape: RoundedRectangle, color: Color = Renderer.color) {
		DrawRectangleRounded(shape.frame.rawValue, shape.cornerRadius, shape.segments.toInt32, color.rawValue)
	}
	
	//MARK: - Circle
	
	@inlinable public static func circle(at x: Int, _ y: Int, radius: Float, color: Color = Renderer.color) {
		DrawCircle(x.toInt32, y.toInt32, radius, color.rawValue)
	}
	
	@inlinable public static func circle(at position: Vector2, radius: Float, color: Color = Renderer.color) {
		DrawCircleV(position.rawValue, radius, color.rawValue)
	}
	
	@inlinable public static func circle(_ shape: Circle, color: Color = Renderer.color) {
		DrawCircleV(shape.position.rawValue, shape.radius, color.rawValue)
	}

	//MARK: - Circle with Gradient
	
	@inlinable public static func circle(at x: Int, _ y: Int, radius: Float, gradient from: Color, _ to: Color) {
		DrawCircleGradient(x.toInt32, y.toInt32, radius, from.rawValue, to.rawValue)
	}
	
	@inlinable public static func circle(at position: Vector2, radius: Float, gradient from: Color, _ to: Color) {
		DrawCircleGradient(position.x.toInt32, position.y.toInt32, radius, from.rawValue, to.rawValue)
	}
	
	@inlinable public static func circle(_ shape: Circle, gradient from: Color, _ to: Color) {
		DrawCircleGradient(shape.position.x.toInt32, shape.position.y.toInt32, shape.radius, from.rawValue, to.rawValue)
	}
	
	//MARK: - Sector
	
	@inlinable public static func sector(at x: Int, _ y: Int, radius: Float, from start: Angle, to end: Angle, segments: Int = 0, color: Color = Renderer.color) {
		DrawCircleSector(Vector2(x.toFloat, y.toFloat).rawValue, radius, start.degrees, end.degrees, segments.toInt32, color.rawValue)
	}
	
	@inlinable public static func sector(at position: Vector2, radius: Float, from start: Angle, to end: Angle, segments: Int = 0, color: Color = Renderer.color) {
		DrawCircleSector(position.rawValue, radius, start.degrees, end.degrees, segments.toInt32, color.rawValue)
	}
	
	//MARK: - Ellipse
	
	@inlinable public static func ellipse(at x: Int, _ y: Int, radius radiusH: Float, _ radiusV: Float, color: Color = Renderer.color) {
		DrawEllipse(x.toInt32, y.toInt32, radiusH, radiusV, color.rawValue)
	}
	
	@inlinable public static func ellipse(at position: Vector2, radius: Vector2, color: Color = Renderer.color) {
		DrawEllipse(position.x.toInt32, position.y.toInt32, radius.x, radius.y, color.rawValue)
	}
	
	//MARK: - Ring
	
	@inlinable public static func ring(at x: Int, _ y: Int, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle, to end: Angle, color: Color = Renderer.color) {
		DrawRing(Vector2(x.toFloat, y.toFloat).rawValue, innerRadius, outerRadius, start.degrees, end.degrees, segments.toInt32, color.rawValue)
	}
	
	@inlinable public static func ring(at position: Vector2, inner innerRadius: Float, outer outerRadius: Float, segments: Int = 0, from start: Angle, to end: Angle, color: Color = Renderer.color) {
		DrawRing(position.rawValue, innerRadius, outerRadius, start.degrees, end.degrees, segments.toInt32, color.rawValue)
	}
	
	//MARK: - Polygon
	
	@inlinable public static func polygon(at x: Int, _ y: Int, sides: Int, radius: Float, rotation: Angle = .zero, color: Color = Renderer.color) {
		DrawPoly(Vector2(x.toFloat, y.toFloat).rawValue, sides.toInt32, radius, rotation.degrees, color.rawValue)
	}
	
	@inlinable public static func polygon(at position: Vector2, sides: Int, radius: Float, rotation: Angle = .zero, color: Color = Renderer.color) {
		DrawPoly(position.rawValue, sides.toInt32, radius, rotation.degrees, color.rawValue)
	}
	
}
