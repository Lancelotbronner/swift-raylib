//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class Wave {

	public var rawValue: raylib.Wave

	@inlinable public init(rawValue: raylib.Wave) {
		self.rawValue = rawValue
	}

	@inlinable public convenience init(at filename: String) {
		self.init(rawValue: LoadWave(filename))
	}

	deinit {
		UnloadWave(rawValue)
	}

}
