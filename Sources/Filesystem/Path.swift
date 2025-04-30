//
//  Path.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct Path: RawRepresentable {
	public var rawValue: String

	public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

public extension Path {

	//MARK: - Filesystem

	init(_ filepath: some StringProtocol) {
		self.init(rawValue: String(filepath))
	}

	/// Act as if this path pointed to a file
	@inlinable var file: File {
		File(rawValue: rawValue)
	}
	
	/// Act as if this path pointed to a directory
	@inlinable var directory: Directory {
		Directory(rawValue: rawValue)
	}

	/// Omits the filename from the path, if any
	@inlinable var path: Path {
		Path(rawValue: GetDirectoryPath(rawValue).toString)
	}

	/// Get the previous directory path
	@inlinable var parent: Path {
		Path(rawValue: GetPrevDirectoryPath(rawValue).toString)
	}

	//MARK: - Components

	/// Get the path's components
	@inlinable var components: [Substring] {
		rawValue.split { $0 == "/" || $0 == "\\" }
	}

	/// Get the path's last component
	@inlinable var last: Substring? {
		guard let slash = rawValue.lastIndex(where: { $0 == "/" || $0 == "\\" }) else {
			return nil
		}
		return rawValue[rawValue.index(after: slash)...]
	}

	subscript(_ component: some StringProtocol) -> Path {
		self / component
	}

	subscript(_ components: some Collection<some StringProtocol>) -> Path {
		self / components
	}

	subscript(_ component: Path) -> Path {
		self / component
	}

	static func / (lhs: Path, rhs: some StringProtocol) -> Path {
		Path(rawValue: "\(lhs.rawValue)/\(rhs)")
	}

	static func /= (lhs: inout Path, rhs: some StringProtocol) {
		lhs.rawValue += "/\(rhs)"
	}

	static func / (lhs: Path, rhs: some Collection<some StringProtocol>) -> Path {
		lhs / rhs.joined(separator: "/")
	}

	static func /= (lhs: inout Path, rhs: some Collection<some StringProtocol>) {
		lhs /= rhs.joined(separator: "/")
	}

	static func / (lhs: Path, rhs: Path) -> Path {
		lhs / rhs.rawValue
	}

	static func /= (lhs: inout Path, rhs: Path) {
		lhs /= rhs.rawValue
	}

	//MARK: - Operators

	@inlinable static func + (lhs: Path, rhs: Path) -> Path {
		lhs[rhs.rawValue]
	}
	
	@inlinable static func += (lhs: inout Path, rhs: Path) {
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

public extension Path {

	init(bundle: Bundle) {
		self.init(rawValue: bundle.resourcePath ?? bundle.bundlePath)
	}

}
#endif
