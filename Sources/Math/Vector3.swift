//
//  File.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2023-12-20.
//

import raylib

public struct Vector3: RawRepresentable, Vector3Protocol {

	public var rawValue: raylib.Vector3

	@_transparent public init(rawValue: raylib.Vector3) {
		self.rawValue = rawValue
	}

	@_transparent public init(_ x: Float, _ y: Float, _ z: Float) {
		self.init(rawValue: raylib.Vector3(x: x, y: y, z: z))
	}

	@_transparent public init(_ x: some BinaryInteger, _ y: some BinaryInteger, _ z: some BinaryInteger) {
		self.init(x.toFloat, y.toFloat, z.toFloat)
	}

	@_transparent public var x: Float {
		get { rawValue.x }
		set { rawValue.x = newValue }
	}

	@_transparent public var y: Float {
		get { rawValue.y }
		set { rawValue.y = newValue }
	}

	@_transparent public var z: Float {
		get { rawValue.z }
		set { rawValue.z = newValue }
	}

}

//MARK: - Constants

extension Vector3 {

	public typealias Element = Float

	public static let zero = Vector3(rawValue: Vector3Zero())

	public static let one = Vector3(rawValue: Vector3One())

}

//MARK: - Add Operation

extension Vector3: AdditiveArithmetic/*, ScalarAddOperation, ScalarSubtractOperation*/ {

	@_transparent public static func + (lhs: Vector3, rhs: Vector3) -> Vector3 {
		Vector3(rawValue: Vector3Add(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func += (lhs: inout Vector3, rhs: Vector3) {
		lhs.rawValue = Vector3Add(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public static func + (lhs: Vector3, rhs: Float) -> Vector3 {
		Vector3(rawValue: Vector3AddValue(lhs.rawValue, rhs))
	}

	@_transparent public static func += (lhs: inout Vector3, rhs: Float) {
		lhs.rawValue = Vector3AddValue(lhs.rawValue, rhs)
	}

}

//MARK: - Subtract Operation

extension Vector3 {

	@_transparent public static func - (lhs: Vector3, rhs: Vector3) -> Vector3 {
		Vector3(rawValue: Vector3Subtract(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func -= (lhs: inout Vector3, rhs: Vector3) {
		lhs.rawValue = Vector3Subtract(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public static func - (lhs: Vector3, rhs: Float) -> Vector3 {
		Vector3(rawValue: Vector3SubtractValue(lhs.rawValue, rhs))
	}

	@_transparent public static func -= (lhs: inout Vector3, rhs: Float) {
		lhs.rawValue = Vector3SubtractValue(lhs.rawValue, rhs)
	}

}

//MARK: - Multiplication Operation

extension Vector3 {

	@_transparent public static func * (lhs: Vector3, rhs: Float) -> Vector3 {
		Vector3(rawValue: Vector3Scale(lhs.rawValue, rhs))
	}

	@_transparent public static func *= (lhs: inout Vector3, rhs: Float) {
		lhs.rawValue = Vector3Scale(lhs.rawValue, rhs)
	}

	@_transparent public static func * (lhs: Vector3, rhs: Vector3) -> Vector3 {
		Vector3(rawValue: Vector3Multiply(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func *= (lhs: inout Vector3, rhs: Vector3) {
		lhs.rawValue = Vector3Multiply(lhs.rawValue, rhs.rawValue)
	}

}

#warning("Vector3CrossProduct")
#warning("Vector3Perpendicular")

//MARK: - Length Operation

extension Vector3: LengthOperation {

	@_transparent public var length: Float {
		get { Vector3Length(rawValue) }
	}

	@_transparent public var lengthSqr: Float {
		get { Vector3LengthSqr(rawValue) }
	}

}

//MARK: - Dot Operations

extension Vector3/*: DotProductOperation*/ {

	@_transparent public static func dot(_ lhs: Vector3, _ rhs: Vector3) -> Float {
		Vector3DotProduct(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public func dot(_ other: Vector3) -> Float {
		Vector3.dot(self, other)
	}

	@_transparent public static func ⋅(lhs: Vector3, rhs: Vector3) -> Float {
		dot(lhs, rhs)
	}

}

//MARK: - Distance Operations

extension Vector3 {

	@_transparent public static func distance(from lhs: Vector3, to rhs: Vector3) -> Float {
		Vector3Distance(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public func distance(to other: Vector3) -> Float {
		Vector3.distance(from: self, to: other)
	}

	@_transparent public static func distanceSqr(from lhs: Vector3, to rhs: Vector3) -> Float {
		Vector3DistanceSqr(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public func distanceSqr(to other: Vector3) -> Float {
		Vector3.distanceSqr(from: self, to: other)
	}

}

//MARK: - Angular Operations

extension Vector3 {

	/// Calculate angle between two vectors
	/// Angle is calculated from origin point `(0, 0)`.
	@_transparent public func angle(with other: Vector3) -> Angle {
		.radians(Vector3Angle(rawValue, other.rawValue))
	}

}

//MARK: - Negate Operation

extension Vector3: NegateOperation {

	@_transparent public var negated: Vector3 {
		Vector3(rawValue: Vector3Negate(rawValue))
	}

	@_transparent public mutating func negate() {
		rawValue = Vector3Negate(rawValue)
	}

	@_transparent public static prefix func - (operand: Vector3) -> Vector3 {
		operand.negated
	}

}

//MARK: - Division Operation

extension Vector3 {

	@_transparent public static func / (lhs: Vector3, rhs: Vector3) -> Vector3 {
		Vector3(rawValue: Vector3Divide(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func /= (lhs: inout Vector3, rhs: Vector3) {
		lhs.rawValue = Vector3Divide(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public static func / (lhs: Vector3, rhs: Float) -> Vector3 {
		Vector3(rawValue: raylib.Vector3(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs))
	}

	@_transparent public static func /= (lhs: inout Vector3, rhs: Float) {
		lhs.rawValue.x /= rhs
		lhs.rawValue.y /= rhs
	}

}

//MARK: - Normalization Operation

extension Vector3 {

	@_transparent public var normalized: Vector3 {
		Vector3(rawValue: Vector3Normalize(rawValue))
	}

	@_transparent public mutating func normalize() {
		rawValue = Vector3Normalize(rawValue)
	}

}

#warning("Vector3Project")
#warning("Vector3Reject")
#warning("Vector3OrthoNormalize")

//MARK: - Transformation Operation

extension Vector3 {

	@_transparent public func transformed(by matrix: Matrix4x4f) -> Vector3 {
		Vector3(rawValue: Vector3Transform(rawValue, matrix))
	}

	@_transparent public mutating func transform(by matrix: Matrix4x4f) {
		rawValue = Vector3Transform(rawValue, matrix)
	}

}

//MARK: - Rotate Operation

extension Vector3 {

	#warning("Vector3RotateByQuaternion")
	#warning("Vector3RotateByAxisAngle")

//	@_transparent public func rotated(by angle: Angle) -> Vector3 {
//		Vector3(rawValue: Vector3Rotate(rawValue, angle.radians))
//	}
//
//	@_transparent public mutating func rotate(by angle: Angle) {
//		rawValue = Vector3Rotate(rawValue, angle.radians)
//	}

}

//MARK: - Lerp Operation

extension Vector3 {

	@_transparent public static func lerp(_ lhs: Vector3, _ rhs: Vector3, by amount: Float) -> Vector3 {
		Vector3(rawValue: Vector3Lerp(lhs.rawValue, rhs.rawValue, amount))
	}

	@_transparent public func lerped(towards other: Vector3, by amount: Float) -> Vector3 {
		Vector3.lerp(self, other, by: amount)
	}

	@_transparent public mutating func lerp(towards other: Vector3, by amount: Float) {
		rawValue = Vector3Lerp(rawValue, other.rawValue, amount)
	}

}

//MARK: - Reflection Operation

extension Vector3 {

	@_transparent public func reflected(to normal: Vector3) -> Vector3 {
		Vector3(rawValue: Vector3Reflect(rawValue, normal.rawValue))
	}

	@_transparent public mutating func reflect(to normal: Vector3) {
		rawValue = Vector3Reflect(rawValue, normal.rawValue)
	}

}

#warning("Vector3Min")
#warning("Vector3Max")

#warning("Vector3Barycenter")
#warning("Vector3Unproject")

//MARK: - Inverse Operation

extension Vector3: InvertDirectionOperation {

	/// Produces an inverted vector, equivalent to doing `1/x` for each element.
	@_transparent public var inverted: Vector3 {
		Vector3(rawValue: Vector3Invert(rawValue))
	}

	@_transparent public mutating func invert() {
		rawValue = Vector3Invert(rawValue)
	}

}

//MARK: - Clamp Operation

extension Vector3 {

	@_transparent public func clamped(between minimum: Vector3, and maximum: Vector3) -> Vector3 {
		Vector3(rawValue: Vector3Clamp(rawValue, minimum.rawValue, maximum.rawValue))
	}

	@_transparent public mutating func clamp(between minimum: Vector3, and maximum: Vector3) {
		rawValue = Vector3Clamp(rawValue, minimum.rawValue, maximum.rawValue)
	}

	@_transparent public func clamped(between minimum: Float, and maximum: Float) -> Vector3 {
		Vector3(rawValue: Vector3ClampValue(rawValue, minimum, maximum))
	}

	@_transparent public mutating func clamp(between minimum: Float, and maximum: Float) {
		rawValue = Vector3ClampValue(rawValue, minimum, maximum)
	}

	@_transparent public mutating func maximum(of value: Vector3) {
		rawValue.x = Swift.min(rawValue.x, value.x)
		rawValue.y = Swift.min(rawValue.y, value.y)
	}

	@_transparent public mutating func minimum(of value: Vector3) {
		rawValue.x = Swift.max(rawValue.x, value.x)
		rawValue.y = Swift.max(rawValue.y, value.y)
	}

	@_transparent public mutating func maximum(of value: Float) {
		rawValue.x = Swift.min(rawValue.x, value)
		rawValue.y = Swift.min(rawValue.y, value)
	}

	@_transparent public mutating func minimum(of value: Float) {
		rawValue.x = Swift.max(rawValue.x, value)
		rawValue.y = Swift.max(rawValue.y, value)
	}

}

//MARK: - Equals Operation

extension Vector3: Equatable {

	@_transparent public static func approximatlyEquals(_ lhs: Vector3, _ rhs: Vector3) -> Bool {
		Vector3Equals(lhs.rawValue, rhs.rawValue) != 0
	}

	@_transparent public func isApproximatelyEqual(to other: Vector3) -> Bool {
		Vector3Equals(rawValue, other.rawValue) != 0
	}

	@_transparent public static func == (lhs: Vector3, rhs: Vector3) -> Bool {
		lhs.rawValue.x == rhs.rawValue.x && lhs.rawValue.y == rhs.rawValue.y
	}

}

#warning("Vector3Refract")

//MARK: - Movement Operations

extension Vector3 {

//	@_transparent public static func move(_ lhs: Vector3, towards rhs: Vector3, by maximumDistance: Float) -> Vector3 {
//		Vector3(rawValue: Vector3MoveTowards(lhs.rawValue, rhs.rawValue, maximumDistance))
//	}
//
//	@_transparent public func towards(_ other: Vector3, by maximumDistance: Float) -> Vector3 {
//		Vector3.move(self, towards: other, by: maximumDistance)
//	}
//
//	@_transparent public mutating func move(towards other: Vector3, by maximumDistance: Float) {
//		rawValue = Vector3MoveTowards(rawValue, other.rawValue, maximumDistance)
//	}

}
