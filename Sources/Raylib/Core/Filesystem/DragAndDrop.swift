//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import CRaylib

//MARK: - Drag & Drop

public struct DragAndDrop {

	//MARK: Properties

	@usableFromInline static var _paths = DroppedPathCollection(underlying: FilePathList())
	
	//MARK: Computed Properties
	
	/// Check if a file has been dropped into window
	@inlinable public static var isDropped: Bool {
		IsFileDropped()
	}

	/// Get currently loaded filepaths
	@inlinable public static var paths: DroppedPathCollection {
		_paths
	}
	
	//MARK: Methods

	/// Load newly dropped filepaths
	@inlinable public static func refresh() {
		_paths.refresh()
	}

	/// Unload dropped filepaths
	@inlinable public static func clear() {
		_paths.clear()
	}
	
}

//MARK: - Dropped Paths Collection

public final class DroppedPathCollection: Collection {

	public typealias Element = Path
	public typealias Index = Int

	//MARK: Properties

	@usableFromInline var underlying: FilePathList

	//MARK: Initialization

	@inlinable public init(underlying paths: FilePathList) {
		underlying = paths
	}

	deinit {
		clear()
	}

	//MARK: Computed Properties

	@inlinable public var capacity: Int {
		underlying.capacity.toInt
	}

	//MARK: Content Methods

	@usableFromInline internal func refresh() {
		guard DragAndDrop.isDropped else { return }
		clear()
		underlying = LoadDroppedFiles()
	}

	@usableFromInline internal func clear() {
		if underlying.paths != nil {
			UnloadDroppedFiles(underlying)
		}
	}

	//MARK: Collection Conformance

	public var startIndex: Int {
		0
	}

	public var endIndex: Int {
		underlying.count.toInt
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

