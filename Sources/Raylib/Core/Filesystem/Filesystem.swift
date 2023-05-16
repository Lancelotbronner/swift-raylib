//
//  File 2.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Filesystem

public struct Filesystem {
	
	//MARK: Constants
	
	public static var application: Directory {
		GetApplicationDirectory().toPath.directory
	}
	
	public static var current: Directory {
		GetWorkingDirectory().toPath.directory
	}
	
	//MARK: Accessor Methods
	
	@inlinable public static func file(at path: Path) -> File {
		path.file
	}
	
	@inlinable public static func directory(at path: Path) -> Directory {
		path.directory
	}
	
	//MARK: Operation Methods
	
	@inlinable public static func work(within path: Path, do block: () throws -> Void) rethrows {
		let tmp = GetWorkingDirectory()
		ChangeDirectory(path.underlying)
		try block()
		ChangeDirectory(tmp)
	}
	
}

// TODO: Implement file load callbacks
// void SetLoadFileDataCallback(LoadFileDataCallback callback);
// void SetSaveFileDataCallback(SaveFileDataCallback callback);
// void SetLoadFileTextCallback(LoadFileTextCallback callback);
// void SetSaveFileTextCallback(SaveFileTextCallback callback);

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension Filesystem {
	
	@inlinable public static func file(at path: Path, from bundle: Bundle) -> File {
		at(path, from: bundle).file
	}
	
	@inlinable public static func directory(at path: Path, from bundle: Bundle) -> Directory {
		at(path, from: bundle).directory
	}
	
	@usableFromInline static func at(_ relative: Path, from bundle: Bundle) -> Path {
		Path(at: "\(bundle.resourcePath ?? bundle.bundlePath)/\(relative.underlying)")
	}
	
}

#endif
