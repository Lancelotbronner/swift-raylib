import raylib

public struct Path: RawRepresentable {
	public let rawValue: String

	public init(rawValue: String) {
		self.rawValue = rawValue
	}

	//MARK: - Filesystem

	/// Wether this path points to an existing file
	@inlinable public var isFile: Bool {
		FileExists(rawValue)
	}
	
	/// Act as if this path pointed to a file
	@inlinable public var file: File {
		.init(at: self)
	}
	
	/// Wether this path points to an existing directory
	@inlinable public var isDirectory: Bool {
		DirectoryExists(rawValue)
	}
	
	/// Act as if this path pointed to a directory
	@inlinable public var directory: Directory {
		.init(at: self)
	}
	
	/// Get the previous directory path
	@inlinable public var parent: Path {
		Path(rawValue: GetPrevDirectoryPath(rawValue).toString)
	}

	/// Adds a component to the path
	@inlinable public subscript(_ component: String) -> Path {
		Path(rawValue: "\(rawValue)/\(component)")
	}

	/// Adds components to the path
	@inlinable public subscript(_ components: String...) -> Path {
		self[components.joined(separator: "/")]
	}

	//MARK: - Properties

	/// Get the path's components
	@inlinable public var components: [Substring] {
		rawValue.split { $0 == "/" || $0 == "\\" }
	}
	
	/// Get the path's last component
	@inlinable public var last: Substring? {
		guard let slash = rawValue.lastIndex(where: { $0 == "/" || $0 == "\\" }) else {
			return nil
		}
		return rawValue[rawValue.index(after: slash)...]
	}
	
	//MARK: - Operators

	@inlinable public static func + (lhs: Path, rhs: Path) -> Path {
		lhs[rhs.rawValue]
	}
	
	@inlinable public static func += (lhs: inout Path, rhs: Path) {
		lhs = lhs + rhs
	}
	
}

extension Path: ExpressibleByStringLiteral, ExpressibleByArrayLiteral, LosslessStringConvertible {

	public init(_ description: String) {
		self.init(rawValue: description)
	}

	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}

	@inlinable public init(arrayLiteral elements: String...) {
		self.init(rawValue: elements.joined(separator: "/"))
	}

	@inlinable public var description: String {
		rawValue
	}

}
