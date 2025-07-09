//
//  raylib.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2022-01-02.
//

import raylib

public struct Raylib {}

public extension Raylib {

	@inlinable static var version: String {
		RAYLIB_VERSION
	}

	@inlinable static var major: Int {
		RAYLIB_VERSION_MAJOR.toInt
	}

	@inlinable static var minor: Int {
		RAYLIB_VERSION_MINOR.toInt
	}

	@inlinable static var patch: Int {
		RAYLIB_VERSION_PATCH.toInt
	}

}
