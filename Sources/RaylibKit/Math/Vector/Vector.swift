//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import CRaylib

//MARK: - Vector Protocol

public protocol Vector {
	
	associatedtype Scalar
	
	init(_ v: Scalar)

	@inlinable static func transform(_ transform: (WritableKeyPath<Self, Scalar>) throws -> Void) rethrows
	@inlinable static func map(_ transform: (WritableKeyPath<Self, Scalar>) throws -> Scalar) rethrows -> Self
	
}

extension Vector {
	
	//MARK: Utilities
	
	@usableFromInline mutating func unary(_ transform: (inout Scalar) throws -> Void) rethrows {
		try Self.transform { kp in
			try transform(&self[keyPath: kp])
		}
	}
	
	@usableFromInline func unary(_ transform: (Scalar) throws -> Scalar) rethrows -> Self {
		try Self.map { kp in
			try transform(self[keyPath: kp])
		}
	}
	
	@usableFromInline mutating func binary(with scalar: Scalar, operation: (inout Scalar, Scalar) -> Void) {
		unary { operation(&$0, scalar) }
	}
	
	@usableFromInline func binary(with scalar: Scalar, operation: (Scalar, Scalar) -> Scalar) -> Self {
		unary { operation($0, scalar) }
	}
	
	@usableFromInline mutating func binary(with vector: Self, operation: (inout Scalar, Scalar) throws -> Void) rethrows {
		try Self.transform { kp in
			try operation(&self[keyPath: kp], vector[keyPath: kp])
		}
	}
	
	@usableFromInline func binary(with vector: Self, operation: (Scalar, Scalar) throws -> Scalar) rethrows -> Self {
		try Self.map { kp in
			try operation(self[keyPath: kp], vector[keyPath: kp])
		}
	}
	
}

//MARK: - Integer Literal

extension Vector where Scalar: ExpressibleByIntegerLiteral {
	
	//MARK: Constants
	
	@inlinable public static var zero: Self {
		Self(0)
	}
	
	@inlinable public static var one: Self {
		Self(1)
	}
	
}

//MARK: - Signed Numeric Arithmetic

extension Vector where Scalar: SignedNumeric {
	
	//MARK: Operators
	
	@inlinable public static prefix func - (val: Self) -> Self {
		val.unary { -$0 }
	}
	
}

//
//	public func reflected(to normal: Vector2f) -> Vector2f {
//		Vector2Reflect(self, normal)
//	}
//
//	public mutating func reflect(to normal: Vector2f) {
//		self = reflected(to: normal)
//	}
