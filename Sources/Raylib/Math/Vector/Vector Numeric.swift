//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Numeric Arithmetic

extension Vector where Scalar: Numeric {
	
	//MARK: Computed Properties
	
	@inlinable public var magnitude2: Scalar {
		dot(self)
	}
	
	//MARK: Methods
	
	@inlinable public func dot(_ other: Self) -> Scalar {
		var sum = Scalar.zero
		Self.transform { kp in
			sum += self[keyPath: kp] * other[keyPath: kp]
		}
		return sum
	}
	
	@inlinable public func distance(to other: Self) -> Scalar {
		var sum = Scalar.zero
		Self.transform { kp in
			let diff = self[keyPath: kp] - other[keyPath: kp]
			sum += diff * diff
		}
		return sum
	}
	
	//MARK: Operators
	
	@inlinable public static func * (lhs: Self, rhs: Scalar) -> Self {
		lhs.binary(with: rhs, operation: *)
	}
	
	@inlinable public static func *= (lhs: inout Self, rhs: Scalar) {
		lhs.binary(with: rhs, operation: *=)
	}
	
	@inlinable public static func * (lhs: Self, rhs: Self) -> Self {
		lhs.binary(with: rhs, operation: *)
	}
	
	@inlinable public static func *= (lhs: inout Self, rhs: Self) {
		lhs.binary(with: rhs, operation: *=)
	}
	
}

// TODO: Lerping, instead lerp TO other BY time
//extension Vector where Scalar: Numeric {
//
//	@inlinable public func lerped(from start: Scalar, to end: Scalar) -> Self {
//		unary { start + $0 * (end - start) }
//	}
//
//	@inlinable public mutating func lerp(from start: Scalar, to end: Scalar) {
//		self = lerped(from: start, to: endunary { start + $0 * (end - start) }
//	}
//
//}
//
//extension Vector where Scalar: Numeric & Comparable {
//
//	@inlinable public func lerped(in range: Range<Scalar>) -> Self {
//		lerped(from: range.lowerBound, to: range.upperBound)
//	}
//
//	@inlinable public mutating func lerp(in range: Range<Scalar>) {
//		self = lerped(in: range)
//	}
//
//}
