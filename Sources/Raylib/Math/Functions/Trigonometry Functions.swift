//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Trigonometry Functions

public protocol TrigonometryFunctions: FloatingPoint {
	
	static var pi: Self { get }
	static var circle: Self { get }
	
	static func sin(_ value: Self) -> Self
	static func cos(_ value: Self) -> Self
	static func tan(_ value: Self) -> Self
	static func atan(_ value: Self) -> Self
	static func atan2(_ lhs: Self, _ rhs: Self) -> Self
	
}

extension TrigonometryFunctions {
	
	//MARK: Methods
	
	@inlinable public func sin() -> Self {
		Self.sin(self)
	}
	
	@inlinable public func cos() -> Self {
		Self.cos(self)
	}
	
	@inlinable public func tan() -> Self {
		Self.tan(self)
	}
	
	@inlinable public func atan() -> Self {
		Self.atan(self)
	}
	
	@inlinable public func atan2(with other: Self) -> Self {
		Self.atan2(self, other)
	}
	
}

