//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import Darwin

//MARK: - Conformances

extension Double: NormalizationFunctions, RemappingFunctions { }

//MARK: - Trigonometry

extension Double: TrigonometryFunctions {
	
	//MARK: Constants
	
	@inlinable public static var circle: Double {
		2 * .pi
	}
	
	//MARK: Static Methods
	
	@inlinable public static func sin(_ value: Double) -> Double {
		Darwin.sin(value)
	}
	
	@inlinable public static func cos(_ value: Double) -> Double {
		Darwin.cos(value)
	}
	
	@inlinable public static func tan(_ value: Double) -> Double {
		Darwin.tan(value)
	}
	
	@inlinable public static func atan(_ value: Double) -> Double {
		Darwin.atan(value)
	}
	
	@inlinable public static func atan2(_ lhs: Double, _ rhs: Double) -> Double {
		Darwin.atan2(lhs, rhs)
	}
	
}
