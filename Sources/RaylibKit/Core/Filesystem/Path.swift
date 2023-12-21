import raylib

public struct Path: RawRepresentable {
	public var rawValue: String

	public init(rawValue: String) {
		self.rawValue = rawValue
	}

	//MARK: - Filesystem

	public init(_ filepath: some StringProtocol) {
		self.init(rawValue: String(filepath))
	}

	/// Act as if this path pointed to a file
	@inlinable public var file: File {
		File(rawValue: rawValue)
	}
	
	/// Act as if this path pointed to a directory
	@inlinable public var directory: Directory {
		Directory(rawValue: rawValue)
	}

	/// Omits the filename from the path, if any
	@inlinable public var path: Path {
		Path(rawValue: GetDirectoryPath(rawValue).toString)
	}

	/// Get the previous directory path
	@inlinable public var parent: Path {
		Path(rawValue: GetPrevDirectoryPath(rawValue).toString)
	}

	//MARK: - Components

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

	public subscript(_ component: some StringProtocol) -> Path {
		self / component
	}

	public subscript(_ components: some Collection<some StringProtocol>) -> Path {
		self / components
	}

	public subscript(_ component: Path) -> Path {
		self / path
	}

	public static func / (lhs: Path, rhs: some StringProtocol) -> Path {
		Path(rawValue: "\(lhs.rawValue)/\(rhs)")
	}

	public static func /= (lhs: inout Path, rhs: some StringProtocol) {
		lhs.rawValue += "/\(rhs)"
	}

	public static func / (lhs: Path, rhs: some Collection<some StringProtocol>) -> Path {
		lhs / rhs.joined(separator: "/")
	}

	public static func /= (lhs: inout Path, rhs: some Collection<some StringProtocol>) {
		lhs /= rhs.joined(separator: "/")
	}

	public static func / (lhs: Path, rhs: Path) -> Path {
		lhs / rhs.rawValue
	}

	public static func /= (lhs: inout Path, rhs: Path) {
		lhs /= rhs.rawValue
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

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension Path {

	public init(bundle: Bundle) {
		self.init(rawValue: bundle.resourcePath ?? bundle.bundlePath)
	}

}
#endif
