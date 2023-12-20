////
////  File.swift
////  
////
////  Created by Christophe Bronner on 2022-01-18.
////
//
//extension VectorProtocol where Element: BinaryInteger {
//	
//	//MARK: - Integer Arithmetics
//	
//	@inlinable public static func % (lhs: Self, rhs: Element) -> Self {
//		lhs.binary(with: rhs, operation: %)
//	}
//	
//	@inlinable public static func %= (lhs: inout Self, rhs: Element) {
//		lhs.binary(with: rhs, operation: %=)
//	}
//	
//	@inlinable public static func % (lhs: Self, rhs: Self) -> Self {
//		lhs.binary(with: rhs, operation: %)
//	}
//	
//	@inlinable public static func %= (lhs: inout Self, rhs: Self) {
//		lhs.binary(with: rhs, operation: %=)
//	}
//	
//	@inlinable public static func / (lhs: Self, rhs: Element) -> Self {
//		lhs.binary(with: rhs, operation: /)
//	}
//	
//	@inlinable public static func /= (lhs: inout Self, rhs: Element) {
//		lhs.binary(with: rhs, operation: /=)
//	}
//	
//	@inlinable public static func / (lhs: Self, rhs: Self) -> Self {
//		lhs.binary(with: rhs, operation: /)
//	}
//	
//	@inlinable public static func /= (lhs: inout Self, rhs: Self) {
//		lhs.binary(with: rhs, operation: /=)
//	}
//	
//}
