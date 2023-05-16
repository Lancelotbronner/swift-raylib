//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Random

public struct Random {
	
	//MARK: Methods
	
	/// Get a random value between min and max (both included)
	@inlinable public static func between(_ min: Int, and max: Int) -> Int {
		GetRandomValue(min.toInt32, max.toInt32).toInt
	}
	
	/// Set the seed for the random number generator
	@inlinable public static func seed(using value: UInt) {
		SetRandomSeed(value.toUInt32)
	}
	
}
