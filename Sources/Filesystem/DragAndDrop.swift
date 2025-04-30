//
//  DragAndDrop.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import raylib

public struct DragAndDrop {
	@usableFromInline static let _paths = FilePaths(rawValue: FilePathList())
}

public extension DragAndDrop {

	/// Check if a file has been dropped into window
	@inlinable static var isDropped: Bool {
		IsFileDropped()
	}

	/// Get currently loaded filepaths
	@inlinable static var paths: FilePaths {
		_paths
	}

	/// Load newly dropped filepaths
	@inlinable static func refresh() {
		guard isDropped else { return }
		clear()
		_paths.rawValue = LoadDroppedFiles()
	}

	/// Unload dropped filepaths
	@inlinable static func clear() {
		if _paths.rawValue.paths != nil {
			UnloadDroppedFiles(_paths.rawValue)
		}
	}

}
