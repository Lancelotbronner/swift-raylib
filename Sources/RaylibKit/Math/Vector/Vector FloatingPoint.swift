//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import Darwin

//MARK: - Floating Point Arithmetic

extension Vector where Scalar: FloatingPoint {
	
	//MARK: Computed Properties
	
	@inlinable public var normalized: Self {
		normalized(from: 0, to: 1)
	}
	
	@inlinable public var magnitude: Scalar {
		sqrt(magnitude2)
	}
	
	//MARK: Normalization Methods
	
	@inlinable public func normalized(from start: Scalar, to end: Scalar) -> Self {
		(self - start) / (end - start)
	}
	
	@inlinable public func normalized(in range: Range<Scalar>) -> Self {
		normalized(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func normalize(from start: Scalar, to end: Scalar) {
		self = normalized(from: start, to: end)
	}
	
	@inlinable public mutating func normalize(in range: Range<Scalar>) {
		self = normalized(in: range)
	}
	
	//MARK: Remapping Methods
	
	@inlinable public func remapped(input inputStart: Scalar, to inputEnd: Scalar, output outputStart: Scalar, to outputEnd: Scalar) -> Self {
		normalized(from: inputStart, to: inputEnd) * (outputEnd - outputStart) + outputStart
	}
	
	@inlinable public func remapped(from input: Range<Scalar>, to output: Range<Scalar>) -> Self {
		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
	}
	
	@inlinable public mutating func remap(input inputStart: Scalar, to inputEnd: Scalar, output outputStart: Scalar, to outputEnd: Scalar) {
		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
	}
	
	@inlinable public mutating func remap(from input: Range<Scalar>, to output: Range<Scalar>) {
		self = remapped(from: input, to: output)
	}
	
	//MARK: Operators
	
	@inlinable public static func / (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: /)
	}
	
	@inlinable public static func /= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: /=)
	}
	
	@inlinable public static func / (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: /)
	}
	
	@inlinable public static func /= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: /=)
	}
	
}
