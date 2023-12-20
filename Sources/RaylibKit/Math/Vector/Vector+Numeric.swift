////
////  File.swift
////  
////
////  Created by Christophe Bronner on 2021-12-26.
////
//
//extension VectorProtocol where Element: Numeric {
//	
//	//MARK: - Shortcuts
//
//	@inlinable public var magnitude2: Element {
//		dot(self)
//	}
//	
//	//MARK: - Vector Operations
//
//	@inlinable public func dot(_ other: Self) -> Element {
//		var sum = Element.zero
//		Self.transform { kp in
//			sum += self[keyPath: kp] * other[keyPath: kp]
//		}
//		return sum
//	}
//	
//	@inlinable public func distance(to other: Self) -> Element {
//		var sum = Element.zero
//		Self.transform { kp in
//			let diff = self[keyPath: kp] - other[keyPath: kp]
//			sum += diff * diff
//		}
//		return sum
//	}
//	
//	//MARK: - Element Arithmetics
//	
//	@inlinable public static func * (lhs: Self, rhs: Element) -> Self {
//		lhs.binary(with: rhs, operation: *)
//	}
//	
//	@inlinable public static func *= (lhs: inout Self, rhs: Element) {
//		lhs.binary(with: rhs, operation: *=)
//	}
//
//	//MARK: - Vector Arithmetics
//
//	@inlinable public static func * (lhs: Self, rhs: Self) -> Self {
//		lhs.binary(with: rhs, operation: *)
//	}
//	
//	@inlinable public static func *= (lhs: inout Self, rhs: Self) {
//		lhs.binary(with: rhs, operation: *=)
//	}
//	
//}
//
//// TODO: Lerping, instead lerp TO other BY time
////extension Vector where Element: Numeric {
////
////	@inlinable public func lerped(from start: Element, to end: Element) -> Self {
////		unary { start + $0 * (end - start) }
////	}
////
////	@inlinable public mutating func lerp(from start: Element, to end: Element) {
////		self = lerped(from: start, to: endunary { start + $0 * (end - start) }
////	}
////
////}
////
////extension Vector where Element: Numeric & Comparable {
////
////	@inlinable public func lerped(in range: Range<Element>) -> Self {
////		lerped(from: range.lowerBound, to: range.upperBound)
////	}
////
////	@inlinable public mutating func lerp(in range: Range<Element>) {
////		self = lerped(in: range)
////	}
////
////}
