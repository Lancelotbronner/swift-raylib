////
////  File.swift
////  
////
////  Created by Christophe Bronner on 2021-12-26.
////
//
//extension VectorProtocol where Element: AdditiveArithmetic {
//
//	//MARK: - Scalar Arithmetic
//
//	@inlinable public static func + (lhs: Self, rhs: Element) -> Self {
//		lhs.binary(with: rhs, operation: +)
//	}
//	
//	@inlinable public static func += (lhs: inout Self, rhs: Element) {
//		lhs.binary(with: rhs, operation: +=)
//	}
//	
//	@inlinable public static func - (lhs: Self, rhs: Element) -> Self {
//		lhs.binary(with: rhs, operation: -)
//	}
//	
//	@inlinable public static func -= (lhs: inout Self, rhs: Element) {
//		lhs.binary(with: rhs, operation: -=)
//	}
//	
//	//MARK: - Vector Arithmetic
//	
//	@inlinable public static func + (lhs: Self, rhs: Self) -> Self {
//		lhs.binary(with: rhs, operation: +)
//	}
//	
//	@inlinable public static func += (lhs: inout Self, rhs: Self) {
//		lhs.binary(with: rhs, operation: +=)
//	}
//	
//	@inlinable public static func - (lhs: Self, rhs: Self) -> Self {
//		lhs.binary(with: rhs, operation: -)
//	}
//	
//	@inlinable public static func -= (lhs: inout Self, rhs: Self) {
//		lhs.binary(with: rhs, operation: -=)
//	}
//	
//}
