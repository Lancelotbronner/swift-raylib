//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Additive Arithmetic

extension Vector where Scalar: AdditiveArithmetic {
	
	//MARK: Scalar Arithmetic
	
	@inlinable public static func + (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: +)
	}
	
	@inlinable public static func += (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: +=)
	}
	
	@inlinable public static func - (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: -)
	}
	
	@inlinable public static func -= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: -=)
	}
	
	//MARK: Vector Arithmetic
	
	@inlinable public static func + (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: +)
	}
	
	@inlinable public static func += (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: +=)
	}
	
	@inlinable public static func - (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: -)
	}
	
	@inlinable public static func -= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: -=)
	}
	
}
