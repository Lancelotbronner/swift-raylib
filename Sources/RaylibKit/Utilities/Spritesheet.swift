////
////  File.swift
////
////
////  Created by Christophe Bronner on 2021-12-27.
////
//
//public struct Spritesheet {
//	public let rows: Int32
//	public let columns: Int32
//	public let padding: Edges<Int32>
//	public let spacing: Point2
//	public let cell: Point2
//
//	public init(of rows: Int, by columns: Int, within size: Point2, padding: Edges<Int32> = 0, spacing: Point2 = .zero) {
//		self.rows = rows.toInt32
//		self.columns = columns.toInt32
//		self.padding = padding
//		self.spacing = spacing
//		
//		let horizontal = size.x - padding.left - padding.right - spacing.x
//		let vertical = size.y - padding.top - padding.bottom - spacing.y
//		self.cell = Vector2i(horizontal / columns, vertical / rows)
//	}
//	
//	public init(of rows: Int, by columns: Int, tileSize: Vector2i, padding: Edges<Int> = 0, spacing: Vector2i = .zero) {
//		self.rows = rows
//		self.columns = columns
//		self.padding = padding
//		self.spacing = spacing
//		self.cell = tileSize
//	}
//	
//	@inlinable public func coordinates(of x: Int, _ y: Int) -> Vector2i {
//		let horizontal = padding.left + x * (spacing.x + cell.x)
//		let vertical = padding.bottom + y * (spacing.y + cell.y)
//		return Vector2i(horizontal, vertical)
//	}
//	
//	@inlinable public func frame(of x: Int, _ y: Int) -> Rectangle {
//		Rectangle(at: coordinates(of: x, y).toFloat, size: cell.toFloat)
//	}
//	
//}
