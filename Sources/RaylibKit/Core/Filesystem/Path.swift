import CRaylib

//MARK: - Path

public struct Path: ExpressibleByStringLiteral, ExpressibleByArrayLiteral, CustomStringConvertible {
	
	//MARK: Properties
	
	@usableFromInline let underlying: String
	
	//MARK: Computed Properties
	
	@inlinable public var description: String {
		underlying
	}
	
	/// Wether this path points to an existing file
	@inlinable public var isFile: Bool {
		FileExists(underlying)
	}
	
	/// Act as if this path pointed to a file
	@inlinable public var file: File {
		.init(at: self)
	}
	
	/// Wether this path points to an existing directory
	@inlinable public var isDirectory: Bool {
		DirectoryExists(underlying)
	}
	
	/// Act as if this path pointed to a directory
	@inlinable public var directory: Directory {
		.init(at: self)
	}
	
	/// Get the previous directory path
	@inlinable public var parent: Path {
		GetPrevDirectoryPath(underlying).toPath
	}
	
	/// Get the path's components
	@inlinable public var components: [Substring] {
		underlying.split { $0 == "/" || $0 == "\\" }
	}
	
	/// Get the path's last component
	@inlinable public var last: Substring? {
		guard let slash = underlying.lastIndex(where: { $0 == "/" || $0 == "\\" }) else {
			return nil
		}
		return underlying[underlying.index(after: slash)...]
	}
	
	//MARK: Initialization
	
	@inlinable internal init(at filepath: String) {
		underlying = filepath
	}
	
	@inlinable public init(stringLiteral value: String) {
		self.init(at: value)
	}
	
	@inlinable public init(arrayLiteral elements: String...) {
		self.init(at: elements.joined(separator: "/"))
	}
	
	//MARK: Subscripts
	
	/// Adds a component to the path
	@inlinable public subscript(_ component: String) -> Path {
		.init(at: "\(underlying)/\(component)")
	}
	
	/// Adds components to the path
	@inlinable public subscript(_ components: String...) -> Path {
		self[components.joined(separator: "/")]
	}
	
	//MARK: Operators
	
	@inlinable public static func + (lhs: Path, rhs: Path) -> Path {
		lhs[rhs.underlying]
	}
	
	@inlinable public static func += (lhs: inout Path, rhs: Path) {
		lhs = lhs + rhs
	}
	
}

//MARK: - C Integration

extension UnsafePointer where Pointee == CChar {
	
	@inlinable public var toPath: Path {
		.init(at: toString)
	}
	
}

extension UnsafeMutablePointer where Pointee == CChar {
	
	@inlinable public var toPath: Path {
		.init(at: toString)
	}
	
}
