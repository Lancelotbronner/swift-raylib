//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-18.
//

//MARK: - Integer Arithmetic

extension Vector where Scalar: BinaryInteger {
	
	//MARK: Operators
	
	@inlinable public static func % (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: %)
	}
	
	@inlinable public static func %= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: %=)
	}
	
	@inlinable public static func % (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: %)
	}
	
	@inlinable public static func %= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: %=)
	}
	
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
