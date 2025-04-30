//
//  Wave.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class Wave {
	public var rawValue: raylib.Wave

	@inlinable public init(rawValue: raylib.Wave) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadWave(rawValue)
	}
}

public extension Wave {
	@inlinable convenience init(at filename: String) {
		self.init(rawValue: LoadWave(filename))
	}
}
