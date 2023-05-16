
//MARK: - Thickness

public struct Edges<Scalar> {
	
	//MARK: Properties
	
	public var top: Scalar
	public var right: Scalar
	public var bottom: Scalar
	public var left: Scalar
	
	//MARK: Initialization
	
	public init(left: Scalar, top: Scalar, right: Scalar, bottom: Scalar) {
		self.left = left
		self.top = top
		self.right = right
		self.bottom = bottom
	}
	
	public init(horizontal: Scalar, vertical: Scalar) {
		self.init(left: horizontal, top: vertical, right: horizontal, bottom: vertical)
	}
	
	public init(_ value: Scalar) {
		self.init(left: value, top: value, right: value, bottom: value)
	}
	
}

//MARK: - Literals

extension Edges: ExpressibleByIntegerLiteral where Scalar: ExpressibleByIntegerLiteral, Scalar.IntegerLiteralType == Scalar {
	
	public init(integerLiteral value: Scalar) {
		self.init(value)
	}
	
}
