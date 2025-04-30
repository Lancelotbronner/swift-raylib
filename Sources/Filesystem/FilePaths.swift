//
//  FilePaths.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2023-02-24.
//

import raylib

public final class FilePaths: RawRepresentable, Collection, @unchecked Sendable {
	public var rawValue: FilePathList

	@inlinable public init(rawValue: FilePathList) {
		self.rawValue = rawValue
	}

	deinit {
		if rawValue.paths != nil {
			UnloadDirectoryFiles(rawValue)
		}
	}
}

public extension FilePaths {

	@inlinable var capacity: Int {
		rawValue.capacity.toInt
	}

}

//MARK: - Collection Implementation

public extension FilePaths {

	var startIndex: Int {
		0
	}

	var endIndex: Int {
		(rawValue.count - 1).toInt
	}

	var count: Int {
		rawValue.count.toInt
	}

	subscript(position: Int) -> Path {
		get {
			precondition(position >= 0 && position < rawValue.count, "Index out of range")
			guard let element = rawValue.paths[position] else {
				preconditionFailure("Uninitialized path within FilePathList's range, open an issue")
			}
			return Path(rawValue: element.toString)
		}
	}

	func index(after i: Int) -> Int {
		i + 1
	}

}
