//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-02.
//

import raylib

public struct Raylib {
	
	@inlinable public static var version: String {
		RAYLIB_VERSION
	}

	@inlinable public static var major: Int {
		RAYLIB_VERSION_MAJOR.toInt
	}

	@inlinable public static var minor: Int {
		RAYLIB_VERSION_MINOR.toInt
	}

	@inlinable public static var patch: Int {
		RAYLIB_VERSION_PATCH.toInt
	}

}
