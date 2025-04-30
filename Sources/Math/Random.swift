//
//  Random.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Random {
	
	/// Get a random value between min and max (both included)
	@inlinable public static func between(_ min: Int, and max: Int) -> Int {
		GetRandomValue(min.toInt32, max.toInt32).toInt
	}

	@inlinable public static func element<C, T>(in collection: C) -> T where C: Collection<T>, C.Index == Int {
		collection[between(0, and: collection.count - 1)]
	}

	/// Set the seed for the random number generator
	@inlinable public static func seed(using value: UInt) {
		SetRandomSeed(value.toUInt32)
	}
	
}
