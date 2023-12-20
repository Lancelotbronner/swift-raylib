//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import raylib

public enum Angle<Scalar: FloatingPoint & TrigonometryFunctions>: Comparable {

	/// Inert angle
	case zero

	/// The number of full rotations made
	case turns(Scalar)

	/// Degrees
	case degrees(Scalar)

	/// Radians
	case radians(Scalar)

	/// The number of full rotations made
	@_transparent public var turns: Scalar {
		switch self {
		case .zero: return 0
		case let .turns(times): return times
		case let .degrees(angle): return angle / 360
		case let .radians(angle): return angle / .pi / 2
		}
	}

	@_transparent public var degrees: Scalar {
		switch self {
		case .zero: return 0
		case let .turns(times): return 360 * times
		case let .degrees(angle): return angle
		case let .radians(angle): return angle * 180 / .pi
		}
	}

	@_transparent public var radians: Scalar {
		switch self {
		case .zero: return 0
		case let .turns(times): return .pi * 2 * times
		case let .degrees(angle): return angle * .pi / 180
		case let .radians(angle): return angle
		}
	}
	
	/// The normalized direction of this angle
	@inlinable public var direction: Vector2<Scalar> {
		Vector2<Scalar>(radians.cos, radians.sin)
	}
	
	/// The direction of this angle with the given length
	@inlinable public func direction(length: Scalar) -> Vector2<Scalar> {
		direction * length
	}
	
}

//MARK: - Arithmetics

extension Angle: AdditiveArithmetic {
	
	public static func + (lhs: Angle, rhs: Angle) -> Angle {
		.degrees(lhs.degrees + rhs.degrees)
	}
	
	public static func - (lhs: Angle, rhs: Angle) -> Angle {
		.degrees(lhs.degrees - rhs.degrees)
	}
	
}
