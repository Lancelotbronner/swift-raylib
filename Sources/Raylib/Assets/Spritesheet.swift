
//MARK: - Spritesheet

public struct Spritesheet {
	
	//MARK: Properties
	
	public let rows: Int
	public let columns: Int
	public let padding: Edges<Int>
	public let spacing: Vector2i
	public let cell: Vector2i
	
	//MARK: Initialization
	
	public init(of rows: Int, by columns: Int, within size: Vector2i, padding: Edges<Int> = 0, spacing: Vector2i = .zero) {
		self.rows = rows
		self.columns = columns
		self.padding = padding
		self.spacing = spacing
		
		let horizontal = size.x - padding.left - padding.right - spacing.x
		let vertical = size.y - padding.top - padding.bottom - spacing.y
		self.cell = Vector2i(horizontal / columns, vertical / rows)
	}
	
	public init(of rows: Int, by columns: Int, tileSize: Vector2i, padding: Edges<Int> = 0, spacing: Vector2i = .zero) {
		self.rows = rows
		self.columns = columns
		self.padding = padding
		self.spacing = spacing
		self.cell = tileSize
	}
	
	//MARK: Methods
	
	@inlinable public func coordinates(of x: Int, _ y: Int) -> Vector2i {
		let horizontal = padding.left + x * (spacing.x + cell.x)
		let vertical = padding.bottom + y * (spacing.y + cell.y)
		return Vector2i(horizontal, vertical)
	}
	
	@inlinable public func frame(of x: Int, _ y: Int) -> Rectangle {
		Rectangle(at: coordinates(of: x, y).toFloat, size: cell.toFloat)
	}
	
}
