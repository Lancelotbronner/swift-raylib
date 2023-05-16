//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

import CRaylib

//MARK: - Degree

public enum Angle<Scalar: FloatingPoint & TrigonometryFunctions>: Comparable {
	
	//MARK: Cases

	/// Causes no rotation
	case zero

	/// Causes a full rotation
	case unit(Scalar)

	/// Degrees
	case degrees(Scalar)

	/// Radians
	case radians(Scalar)
	
	//MARK: Computed Properties
	
	@_transparent public var toDegrees: Scalar {
		switch self {
		case .zero: return 0
		case let .unit(times): return 360 * times
		case let .degrees(angle): return angle
		case let .radians(angle): return angle * 180 / .pi
		}
	}

	@_transparent public var toRadians: Scalar {
		switch self {
		case .zero: return 0
		case let .unit(times): return .pi * 2 * times
		case let .degrees(angle): return angle * .pi / 180
		case let .radians(angle): return angle
		}
	}
	
	@inlinable public var vector: Vector2<Scalar> {
		Vector2<Scalar>(toRadians.cos(), toRadians.sin())
	}
	
	@inlinable public func vector(length: Scalar) -> Vector2<Scalar> {
		vector * length
	}
	
}

//MARK: - Additive Arithmetics

extension Angle: AdditiveArithmetic {
	
	public static func + (lhs: Angle, rhs: Angle) -> Angle {
		.degrees(lhs.toDegrees + rhs.toDegrees)
	}
	
	public static func - (lhs: Angle, rhs: Angle) -> Angle {
		.degrees(lhs.toDegrees - rhs.toDegrees)
	}
	
}
