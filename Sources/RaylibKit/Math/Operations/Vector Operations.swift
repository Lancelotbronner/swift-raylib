//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-11-29.
//

public protocol LengthOperation<Length> {
	associatedtype Length
	var length: Length { get }
	var lengthSqr: Length { get }
}

public protocol InvertDirectionOperation {
	var inverted: Self { get }
	mutating func invert()
}

public protocol NegateOperation {
	var negated: Self { get }
	mutating func negate()
	prefix static func - (operand: Self) -> Self
}
