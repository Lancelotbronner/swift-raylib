//
//  File.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-04.
//

import raylib

public enum Angle: Comparable {

	/// Inert angle
	case zero

	/// The number of full rotations made
	case turns(Float)

	/// Degrees
	case degrees(Float)

	/// Radians
	case radians(Float)

	/// The number of full rotations made
	@_transparent public var turns: Float {
		switch self {
		case .zero: return 0
		case let .turns(times): return times
		case let .degrees(angle): return angle / 360
		case let .radians(angle): return angle / .pi / 2
		}
	}

	@_transparent public var degrees: Float {
		switch self {
		case .zero: return 0
		case let .turns(times): return 360 * times
		case let .degrees(angle): return angle
		case let .radians(angle): return angle * 180 / .pi
		}
	}

	@_transparent public var radians: Float {
		switch self {
		case .zero: return 0
		case let .turns(times): return .pi * 2 * times
		case let .degrees(angle): return angle * .pi / 180
		case let .radians(angle): return angle
		}
	}
	
	/// The normalized direction of this angle
	@inlinable public var direction: Vector2 {
		Vector2(radians.cos, radians.sin)
	}
	
	/// The direction of this angle with the given length
	@inlinable public func direction(length: Float) -> Vector2 {
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
