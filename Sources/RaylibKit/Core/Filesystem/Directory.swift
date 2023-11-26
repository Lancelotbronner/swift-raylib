//
//  File 2.swift
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

	//MARK: - Symbolic Locations

	public static var application: Directory {
		Path(rawValue: GetApplicationDirectory().toString).directory
	}

	public static var current: Directory {
		Path(rawValue: GetWorkingDirectory().toString).directory
	}

	//MARK: - Filesystem

	public init(_ path: Path) {
		self.init(rawValue: path.rawValue)
	}

	/// The directory's path
	public var path: Path {
		Path(rawValue: rawValue)
	}

	/// Wether this path points to an existing directory
	@inlinable public var exists: Bool {
		DirectoryExists(rawValue)
	}

	/// Get previous directory path for a given path
	@inlinable public var parent: Directory {
		path.parent.directory
	}

	/// Point to a file within the directory
	@inlinable public func file(_ filename: String) -> File {
		path[filename].file
	}

	/// Point to a subdirectory within the directory
	@inlinable public func directory(_ filename: String) -> Directory {
		path[filename].directory
	}

	//MARK: - Contents

	/// Retrieves the subpaths of this directory
	@inlinable public var contents: FilePaths {
		FilePaths(rawValue: LoadDirectoryFiles(path.rawValue))
	}
	
	//MARK: - Working Directory

	/// Change working directory
	@inlinable public func useAsWorkingDirectory() throws {
		ChangeDirectory(path.rawValue)
		// TODO: Handle error
	}

	@inlinable public func withWorkingDirectory(perform block: () throws -> Void) rethrows {
		let tmp = GetWorkingDirectory()
		ChangeDirectory(rawValue)
		try block()
		ChangeDirectory(tmp)
	}

}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension Directory {

	@inlinable public init(_ path: String, in bundle: Bundle) {
		self.init(rawValue: Path(resources: bundle)[path].rawValue)
	}

	@inlinable public init(_ path: Path, in bundle: Bundle) {
		self.init(rawValue: Path(resources: bundle)[path].rawValue)
	}

}
#endif
