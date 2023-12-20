////
////  File.swift
////  
////
////  Created by Christophe Bronner on 2021-12-26.
////
//
//extension VectorProtocol where Element: Comparable {
//	
//	//MARK: - Element Methods
//
//	@inlinable public mutating func minimum(of value: Element) {
//		self = binary(with: value, operation: max)
//	}
//	
//	@inlinable public mutating func maximum(of value: Element) {
//		self = binary(with: value, operation: min)
//	}
//	
//	@inlinable public mutating func clamp(between minimum: Element, and maximum: Element) {
//		unary { $0.clamp(between: minimum, and: maximum) }
//	}
//	
//	@inlinable public func clamped(between minimum: Element, and maximum: Element) -> Self {
//		unary { $0.clamped(between: minimum, and: maximum) }
//	}
//	
//	@inlinable public mutating func maximum(of value: Self) {
//		self = binary(with: value, operation: min)
//	}
//	
//	@inlinable public mutating func minimum(of value: Self) {
//		self = binary(with: value, operation: max)
//	}
//	
//	@inlinable public mutating func clamp(between minimum: Self, and maximum: Self) {
//		Self.transform { kp in
//			self[keyPath: kp].clamp(between: minimum[keyPath: kp], and: maximum[keyPath: kp])
//		}
//	}
//	
//	@inlinable public func clamped(between minimum: Self, and maximum: Self) -> Self {
//		Self.map { kp in
//			self[keyPath: kp].clamped(between: minimum[keyPath: kp], and: maximum[keyPath: kp])
//		}
//	}
//	
//}
