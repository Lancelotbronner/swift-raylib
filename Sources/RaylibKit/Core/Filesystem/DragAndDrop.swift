//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import raylib

public struct DragAndDrop {

	@usableFromInline static var _paths = FilePaths(rawValue: FilePathList())

	/// Check if a file has been dropped into window
	@inlinable public static var isDropped: Bool {
		IsFileDropped()
	}

	/// Get currently loaded filepaths
	@inlinable public static var paths: FilePaths {
		_paths
	}

	/// Load newly dropped filepaths
	@inlinable public static func refresh() {
		guard isDropped else { return }
		clear()
		_paths.rawValue = LoadDroppedFiles()
	}

	/// Unload dropped filepaths
	@inlinable public static func clear() {
		if _paths.rawValue.paths != nil {
			UnloadDroppedFiles(_paths.rawValue)
		}
	}

}
