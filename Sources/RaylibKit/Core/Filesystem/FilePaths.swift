//
//  File 2.swift
//  
//
//  Created by Christophe Bronner on 2023-02-24.
//

import raylib

public final class FilePaths: RawRepresentable {
	public var rawValue: FilePathList

	@inlinable public init(rawValue: FilePathList) {
		self.rawValue = rawValue
	}

	deinit {
		if rawValue.paths != nil {
			UnloadDirectoryFiles(rawValue)
		}
	}

	//MARK: - Capacity

	@inlinable public var capacity: Int {
		rawValue.capacity.toInt
	}

}

extension FilePaths: Collection {

	public var startIndex: Int {
		0
	}

	public var endIndex: Int {
		(rawValue.count - 1).toInt
	}

	public var count: Int {
		rawValue.count.toInt
	}

	public subscript(position: Int) -> Path {
		get {
			precondition(position >= 0 && position < rawValue.count, "Index out of range")
			guard let element = rawValue.paths[position] else {
				preconditionFailure("Uninitialized path within FilePathList's range, open an issue")
			}
			return Path(rawValue: element.toString)
		}
	}

	public func index(after i: Int) -> Int {
		i + 1
	}

}
