//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

public final class Wave {

	@usableFromInline var underlying: CRaylib.Wave

	@inlinable public init(_ underlying: CRaylib.Wave) {
		self.underlying = underlying
	}

	@inlinable public convenience init(at filename: String) {
		self.init(LoadWave(filename))
	}

	deinit {
		UnloadWave(underlying)
	}

}
