//
//  File.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import raylib

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
#if canImport(Darwin)
		Darwin.sin(value)
#elseif canImport(ucrt)
		ucrt.sin(value)
#elseif canImport(Glibc)
		Glibc.sin(value)
#elseif canImport(Musl)
		Musl.sin(value)
#endif
	}
	
	@inlinable public static func cos(_ value: Double) -> Double {
#if canImport(Darwin)
		Darwin.cos(value)
#elseif canImport(ucrt)
		ucrt.cos(value)
#elseif canImport(Glibc)
		Glibc.cos(value)
#elseif canImport(Musl)
		Musl.cos(value)
#endif
	}
	
	@inlinable public static func tan(_ value: Double) -> Double {
#if canImport(Darwin)
		Darwin.tan(value)
#elseif canImport(ucrt)
		ucrt.tan(value)
#elseif canImport(Glibc)
		Glibc.tan(value)
#elseif canImport(Musl)
		Musl.tan(value)
#endif
	}
	
	@inlinable public static func atan(_ value: Double) -> Double {
#if canImport(Darwin)
		Darwin.atan(value)
#elseif canImport(ucrt)
		ucrt.atan(value)
#elseif canImport(Glibc)
		Glibc.atan(value)
#elseif canImport(Musl)
		Musl.atan(value)
#endif
	}
	
	@inlinable public static func atan2(x: Double, y: Double) -> Double {
#if canImport(Darwin)
		Darwin.atan2(y, x)
#elseif canImport(ucrt)
		ucrt.atan2(y, x)
#elseif canImport(Glibc)
		Glibc.atan2(y, x)
#elseif canImport(Musl)
		Musl.atan2(y, x)
#endif
	}
	
}
