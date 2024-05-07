//
//  File.swift
//
//
//  Created by Christophe Bronner on 2021-12-27.
//

public struct Spritesheet {
	public let rows: Int32
	public let columns: Int32
	public let padding: EdgeInsets<Int32>
	public let spacing: Point2
	public let cell: Point2

	public init(of rows: Int32, by columns: Int32, within size: Point2, padding: EdgeInsets<Int32> = 0, spacing: Point2 = .zero) {
		self.rows = rows.toInt32
		self.columns = columns.toInt32
		self.padding = padding
		self.spacing = spacing
		
		let horizontal = size.x - padding.left - padding.right - spacing.x
		let vertical = size.y - padding.top - padding.bottom - spacing.y
		self.cell = Point2(horizontal / columns, vertical / rows)
	}
	
	public init(of rows: Int32, by columns: Int32, tileSize: Point2, padding: EdgeInsets<Int32> = 0, spacing: Point2 = .zero) {
		self.rows = rows
		self.columns = columns
		self.padding = padding
		self.spacing = spacing
		self.cell = tileSize
	}
	
	@inlinable public func coordinates(of x: Int32, _ y: Int32) -> Point2 {
		let horizontal = padding.left + x * (spacing.x + cell.x)
		let vertical = padding.bottom + y * (spacing.y + cell.y)
		return Point2(horizontal, vertical)
	}
	
	@inlinable public func frame(of x: Int32, _ y: Int32) -> Rectangle {
		Rectangle(at: Vector2(coordinates(of: x, y)), size: Vector2(cell))
	}
	
}
