//
//  File 2.swift
//  File 2
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Directory

public struct Directory {
	
	//MARK: Properties
	
	/// The directory's path
	public let path: Path
	
	//MARK: Computed Properties
	
	/// Check if a directory path exists
	@inlinable public var exists: Bool {
		path.isDirectory
	}
	
	/// Get previous directory path for a given path
	@inlinable public var parent: Directory {
		.init(at: path.parent)
	}
	
	/// Retrieves the subpaths of this directory
	@inlinable public var contents: [Path] {
		// TODO: Maybe make a DirectoryContentIterator for lazy processing
		// TODO: Make a DirectoryRecursiveContentIterator for recursive iteration
		let files = LoadDirectoryFiles(path.underlying)
		
		guard files.paths.pointee!.pointee != 0 else {
			return []
		}
		
		let buffer = UnsafeBufferPointer(start: files.paths?.advanced(by: 2), count: files.count.toInt - 2)
		let result = buffer.compactMap { pointer in
			pointer.map { path[$0.toString] }
		}
		UnloadDirectoryFiles(files)
		return result
	}
	
	// TODO: Add method to retrieve contents
	// - Paths
	// - Recursive paths
	// - Files
	// - Recursive files
	
	//MARK: Initialization
	
	@usableFromInline init(at path: Path) {
		self.path = path
	}
	
	//MARK: Methods
	
	/// Change working directory
	@inlinable public func useAsWorkingDirectory() throws {
		ChangeDirectory(path.underlying)
		// TODO: Handle error
	}
	
	/// Point to a file within the directory
	@inlinable public func file(_ filename: String) -> File {
		path[filename].file
	}
	
	/// Point to a subdirectory within the directory
	@inlinable public func directory(_ filename: String) -> Directory {
		path[filename].directory
	}
	
	//MARK: ForEach Methods
	
	@inlinable public func forEachFiles(do block: (File) throws -> Void) rethrows {
		try walk(path: { _ in }, file: block, directory: { _ in }, paths: { _ in })
	}
	
	//MARK: Map Methods
	
	@inlinable public func mapFiles<NewValue>(_ transform: (File) -> NewValue) -> [NewValue] {
		var mapped: [NewValue] = []
		walk(path: { _ in }, file: { mapped.append(transform($0)) }, directory: { _ in }, paths: { mapped.reserveCapacity(mapped.count + $0.count) })
		return mapped
	}
	
	//MARK: Utilities
	
	@usableFromInline func walk(
		path processPath: (Path) throws -> Void,
		file processFile: (File) throws -> Void,
		directory processDirectory: (Directory) throws -> Void,
		paths processPaths: ([Path]) throws -> Void
	) rethrows {
		var paths = contents
		try processPaths(paths)
		
		while !paths.isEmpty {
			let path = paths.removeLast()
			try processPath(path)
			
			switch true {
			case path.isFile: try processFile(path.file)
			case path.isDirectory:
				try processDirectory(path.directory)
				let subpaths = path.directory.contents
				try processPaths(subpaths)
				paths.append(contentsOf: subpaths)
			default: continue
			}
		}
	}
	
}
