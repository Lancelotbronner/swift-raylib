//
//  Directory.swift
//  File 2
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Directory: RawRepresentable {
	public let rawValue: String

	public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

public extension Directory {

	//MARK: - Symbolic Locations

	static var application: Directory {
		Path(rawValue: GetApplicationDirectory().toString).directory
	}

	static var current: Directory {
		Path(rawValue: GetWorkingDirectory().toString).directory
	}

	//MARK: - Filesystem

	init(_ path: Path) {
		self.init(rawValue: path.rawValue)
	}

	/// The directory's path
	var path: Path {
		Path(rawValue: rawValue)
	}

	/// Wether this path points to an existing directory
	@inlinable var exists: Bool {
		DirectoryExists(rawValue)
	}

	/// Get previous directory path for a given path
	@inlinable var parent: Directory {
		path.parent.directory
	}

	/// Point to a file within the directory
	@inlinable func file(_ filename: String) -> File {
		path[filename].file
	}

	/// Point to a subdirectory within the directory
	@inlinable func directory(_ filename: String) -> Directory {
		path[filename].directory
	}

	//MARK: - Contents

	/// Retrieves the subpaths of this directory
	@inlinable var contents: FilePaths {
		FilePaths(rawValue: LoadDirectoryFiles(path.rawValue))
	}
	
	//MARK: - Working Directory

	/// Change working directory
	@inlinable func useAsWorkingDirectory() throws {
		ChangeDirectory(path.rawValue)
		// TODO: Handle error
	}

	@inlinable func withWorkingDirectory(perform block: () throws -> Void) rethrows {
		let tmp = GetWorkingDirectory()
		ChangeDirectory(rawValue)
		try block()
		ChangeDirectory(tmp)
	}

}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

public extension Directory {

	@inlinable init(_ path: String, bundle: Bundle) {
		self.init(rawValue: Path(bundle: bundle)[path].rawValue)
	}

	@inlinable init(_ path: Path, bundle: Bundle) {
		self.init(rawValue: Path(bundle: bundle)[path].rawValue)
	}

}
#endif
