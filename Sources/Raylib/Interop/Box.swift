
public final class Box<Content> {
	
	//MARK: Properties
	
	public var content: Content
	
	//MARK: Initialization
	
	@inlinable public init(of content: Content) {
		self.content = content
	}
	
}
