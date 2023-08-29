
//MARK: - Size

public struct Size<Scalar> {
	
	//MARK: Properties
	
	public var width: Scalar
	public var height: Scalar
	
	//MARK: Initialization
	
	public init(width: Scalar, height: Scalar) {
		self.width = width
		self.height = height
	}
	
	public init(_ value: Scalar) {
		self.init(width: value, height: value)
	}
	
}
