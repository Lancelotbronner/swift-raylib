//
//  File 2.swift
//  
//
//  Created by Christophe Bronner on 2023-02-24.
//

import CRaylib

//MARK: - Path Collection

public final class DirectoryContents: Collection {

	public typealias Element = Path
	public typealias Index = Int

	//MARK: Properties

	@usableFromInline let underlying: FilePathList

	//MARK: Initialization

	@inlinable public init(underlying paths: FilePathList) {
		underlying = paths
	}

	deinit {
		if underlying.paths != nil {
			UnloadDirectoryFiles(underlying)
		}
	}

	//MARK: Computed Properties

	public var capacity: Int {
		underlying.capacity.toInt
	}

	//MARK: Collection Conformance

	public var startIndex: Int {
		0
	}

	public var endIndex: Int {
		(underlying.count - 1).toInt
	}

	public var count: Int {
		underlying.count.toInt
	}

	public subscript(position: Int) -> Path {
		get {
			precondition(position >= 0 && position < underlying.count, "Index out of range")
			let element = underlying.paths[position]
			precondition(element != nil, "Uninitialized path within PathCollection's range, contact the developer")
			return Path(at: String(cString: element!))
		}
	}

	public func index(after i: Int) -> Int {
		i + 1
	}

}
