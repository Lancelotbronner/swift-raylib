//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

#if canImport(Darwin)
import Darwin
#elseif canImport(ucrt)
import ucrt
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unsupported platform")
#endif

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
		sin(value)
	}
	
	@inlinable public static func cos(_ value: Double) -> Double {
		cos(value)
	}
	
	@inlinable public static func tan(_ value: Double) -> Double {
		tan(value)
	}
	
	@inlinable public static func atan(_ value: Double) -> Double {
		atan(value)
	}
	
	@inlinable public static func atan2(_ lhs: Double, _ rhs: Double) -> Double {
		atan2(lhs, rhs)
	}
	
}
