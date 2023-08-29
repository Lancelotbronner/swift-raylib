//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import Darwin

//MARK: - Conformances

extension Float: NormalizationFunctions, RemappingFunctions { }

//MARK: - Trigonometry

extension Float: TrigonometryFunctions {
	
	//MARK: Constants
	
	@inlinable public static var circle: Float {
		2 * .pi
	}
	
	//MARK: Static Methods
	
	@inlinable public static func sin(_ value: Float) -> Float {
		sinf(value)
	}
	
	@inlinable public static func cos(_ value: Float) -> Float {
		cosf(value)
	}
	
	@inlinable public static func tan(_ value: Float) -> Float {
		tanf(value)
	}
	
	@inlinable public static func atan(_ value: Float) -> Float {
		atanf(value)
	}
	
	@inlinable public static func atan2(_ lhs: Float, _ rhs: Float) -> Float {
		atan2f(lhs, rhs)
	}
	
}
