//
//  File.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2023-11-29.
//

import raylib

public struct Vector2: RawRepresentable, Vector2Protocol {

	public var rawValue: raylib.Vector2

	@_transparent public init(rawValue: raylib.Vector2) {
		self.rawValue = rawValue
	}

	@_transparent public init(_ x: Float, _ y: Float) {
		self.init(rawValue: raylib.Vector2(x: x, y: y))
	}

	@_transparent public init(_ x: some BinaryInteger, _ y: some BinaryInteger) {
		self.init(x.toFloat, y.toFloat)
	}

	@_transparent public init(_ point: Point2) {
		self.init(point.x.toFloat, point.y.toFloat)
	}

	@_transparent public var x: Float {
		get { rawValue.x }
		set { rawValue.x = newValue }
	}

	@_transparent public var y: Float {
		get { rawValue.y }
		set { rawValue.y = newValue }
	}

}

//MARK: - Constants

extension Vector2 {

	public typealias Element = Float

	public static let zero = Vector2(rawValue: Vector2Zero())

	public static let one = Vector2(rawValue: Vector2One())

}

//MARK: - Add Operation

extension Vector2: AdditiveArithmetic/*, ScalarAddOperation, ScalarSubtractOperation*/ {

	@_transparent public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
		Vector2(rawValue: Vector2Add(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func += (lhs: inout Vector2, rhs: Vector2) {
		lhs.rawValue = Vector2Add(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public static func + (lhs: Vector2, rhs: Float) -> Vector2 {
		Vector2(rawValue: Vector2AddValue(lhs.rawValue, rhs))
	}

	@_transparent public static func += (lhs: inout Vector2, rhs: Float) {
		lhs.rawValue = Vector2AddValue(lhs.rawValue, rhs)
	}

}

//MARK: - Subtract Operation

extension Vector2 {

	@_transparent public static func - (lhs: Vector2, rhs: Vector2) -> Vector2 {
		Vector2(rawValue: Vector2Subtract(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func -= (lhs: inout Vector2, rhs: Vector2) {
		lhs.rawValue = Vector2Subtract(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public static func - (lhs: Vector2, rhs: Float) -> Vector2 {
		Vector2(rawValue: Vector2SubtractValue(lhs.rawValue, rhs))
	}

	@_transparent public static func -= (lhs: inout Vector2, rhs: Float) {
		lhs.rawValue = Vector2SubtractValue(lhs.rawValue, rhs)
	}

}

//MARK: - Length Operation

extension Vector2: LengthOperation {

	@_transparent public var length: Float {
		get { Vector2Length(rawValue) }
	}

	@_transparent public var lengthSqr: Float {
		get { Vector2LengthSqr(rawValue) }
	}

}

//MARK: - Dot Operations

extension Vector2/*: DotProductOperation*/ {

	@_transparent public static func dot(_ lhs: Vector2, _ rhs: Vector2) -> Float {
		Vector2DotProduct(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public func dot(_ other: Vector2) -> Float {
		Vector2.dot(self, other)
	}

	@_transparent public static func ⋅(lhs: Vector2, rhs: Vector2) -> Float {
		dot(lhs, rhs)
	}

}

//MARK: - Distance Operations

extension Vector2 {

	@_transparent public static func distance(from lhs: Vector2, to rhs: Vector2) -> Float {
		Vector2Distance(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public func distance(to other: Vector2) -> Float {
		Vector2.distance(from: self, to: other)
	}

	@_transparent public static func distanceSqr(from lhs: Vector2, to rhs: Vector2) -> Float {
		Vector2DistanceSqr(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public func distanceSqr(to other: Vector2) -> Float {
		Vector2.distanceSqr(from: self, to: other)
	}

}

//MARK: - Angular Operations

extension Vector2 {

	/// Calculate angle between two vectors
	/// Angle is calculated from origin point `(0, 0)`.
	@_transparent public func angle(with other: Vector2) -> Angle {
		.radians(Vector2Angle(rawValue, other.rawValue))
	}

	@_transparent public func lineAngle(to end: Vector2) -> Angle {
		.radians(Vector2LineAngle(rawValue, end.rawValue))
	}

}

//MARK: - Multiplication Operation

extension Vector2 {

	@_transparent public static func * (lhs: Vector2, rhs: Float) -> Vector2 {
		Vector2(rawValue: Vector2Scale(lhs.rawValue, rhs))
	}

	@_transparent public static func *= (lhs: inout Vector2, rhs: Float) {
		lhs.rawValue = Vector2Scale(lhs.rawValue, rhs)
	}

	@_transparent public static func * (lhs: Vector2, rhs: Vector2) -> Vector2 {
		Vector2(rawValue: Vector2Multiply(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func *= (lhs: inout Vector2, rhs: Vector2) {
		lhs.rawValue = Vector2Multiply(lhs.rawValue, rhs.rawValue)
	}

}

//MARK: - Negate Operation

extension Vector2: NegateOperation {

	@_transparent public var negated: Vector2 {
		Vector2(rawValue: Vector2Negate(rawValue))
	}

	@_transparent public mutating func negate() {
		rawValue = Vector2Negate(rawValue)
	}

	@_transparent public static prefix func - (operand: Vector2) -> Vector2 {
		operand.negated
	}

}

//MARK: - Division Operation

extension Vector2 {

	@_transparent public static func / (lhs: Vector2, rhs: Vector2) -> Vector2 {
		Vector2(rawValue: Vector2Divide(lhs.rawValue, rhs.rawValue))
	}

	@_transparent public static func /= (lhs: inout Vector2, rhs: Vector2) {
		lhs.rawValue = Vector2Divide(lhs.rawValue, rhs.rawValue)
	}

	@_transparent public static func / (lhs: Vector2, rhs: Float) -> Vector2 {
		Vector2(rawValue: raylib.Vector2(x: lhs.x / rhs, y: lhs.y / rhs))
	}

	@_transparent public static func /= (lhs: inout Vector2, rhs: Float) {
		lhs.rawValue.x /= rhs
		lhs.rawValue.y /= rhs
	}

}

//MARK: - Normalization Operation

extension Vector2 {

	@_transparent public var normalized: Vector2 {
		Vector2(rawValue: Vector2Normalize(rawValue))
	}

	@_transparent public mutating func normalize() {
		rawValue = Vector2Normalize(rawValue)
	}

}

//MARK: - Transformation Operation

extension Vector2 {

	@_transparent public func transformed(by matrix: Matrix4x4f) -> Vector2 {
		Vector2(rawValue: Vector2Transform(rawValue, matrix))
	}

	@_transparent public mutating func transform(by matrix: Matrix4x4f) {
		rawValue = Vector2Transform(rawValue, matrix)
	}

}

//MARK: - Lerp Operation

extension Vector2 {

	@_transparent public static func lerp(_ lhs: Vector2, _ rhs: Vector2, by amount: Float) -> Vector2 {
		Vector2(rawValue: Vector2Lerp(lhs.rawValue, rhs.rawValue, amount))
	}

	@_transparent public func lerped(towards other: Vector2, by amount: Float) -> Vector2 {
		Vector2.lerp(self, other, by: amount)
	}

	@_transparent public mutating func lerp(towards other: Vector2, by amount: Float) {
		rawValue = Vector2Lerp(rawValue, other.rawValue, amount)
	}

}

//MARK: - Reflection Operation

extension Vector2 {

	@_transparent public func reflected(to normal: Vector2) -> Vector2 {
		Vector2(rawValue: Vector2Reflect(rawValue, normal.rawValue))
	}

	@_transparent public mutating func reflect(to normal: Vector2) {
		rawValue = Vector2Reflect(rawValue, normal.rawValue)
	}

}

//MARK: - Rotate Operation

extension Vector2 {

	@_transparent public func rotated(by angle: Angle) -> Vector2 {
		Vector2(rawValue: Vector2Rotate(rawValue, angle.radians))
	}

	@_transparent public mutating func rotate(by angle: Angle) {
		rawValue = Vector2Rotate(rawValue, angle.radians)
	}

}

//MARK: - Movement Operations

extension Vector2 {

	@_transparent public static func move(_ lhs: Vector2, towards rhs: Vector2, by maximumDistance: Float) -> Vector2 {
		Vector2(rawValue: Vector2MoveTowards(lhs.rawValue, rhs.rawValue, maximumDistance))
	}

	@_transparent public func towards(_ other: Vector2, by maximumDistance: Float) -> Vector2 {
		Vector2.move(self, towards: other, by: maximumDistance)
	}

	@_transparent public mutating func move(towards other: Vector2, by maximumDistance: Float) {
		rawValue = Vector2MoveTowards(rawValue, other.rawValue, maximumDistance)
	}

}

//MARK: - Inverse Operation

extension Vector2: InvertDirectionOperation {

	/// Produces an inverted vector, equivalent to doing `1/x` for each element.
	@_transparent public var inverted: Vector2 {
		Vector2(rawValue: Vector2Invert(rawValue))
	}

	@_transparent public mutating func invert() {
		rawValue = Vector2Invert(rawValue)
	}

}

//MARK: - Clamp Operation

extension Vector2 {

	@_transparent public func clamped(between minimum: Vector2, and maximum: Vector2) -> Vector2 {
		Vector2(rawValue: Vector2Clamp(rawValue, minimum.rawValue, maximum.rawValue))
	}

	@_transparent public mutating func clamp(between minimum: Vector2, and maximum: Vector2) {
		rawValue = Vector2Clamp(rawValue, minimum.rawValue, maximum.rawValue)
	}

	@_transparent public func clamped(between minimum: Float, and maximum: Float) -> Vector2 {
		Vector2(rawValue: Vector2ClampValue(rawValue, minimum, maximum))
	}

	@_transparent public mutating func clamp(between minimum: Float, and maximum: Float) {
		rawValue = Vector2ClampValue(rawValue, minimum, maximum)
	}

	@_transparent public mutating func maximum(of value: Vector2) {
		rawValue.x = Swift.min(rawValue.x, value.x)
		rawValue.y = Swift.min(rawValue.y, value.y)
	}

	@_transparent public mutating func minimum(of value: Vector2) {
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

extension Vector2: Equatable {

	@_transparent public static func approximatlyEquals(_ lhs: Vector2, _ rhs: Vector2) -> Bool {
		Vector2Equals(lhs.rawValue, rhs.rawValue) != 0
	}

	@_transparent public func isApproximatelyEqual(to other: Vector2) -> Bool {
		Vector2Equals(rawValue, other.rawValue) != 0
	}

	@_transparent public static func == (lhs: Vector2, rhs: Vector2) -> Bool {
		lhs.rawValue.x == rhs.rawValue.x && lhs.rawValue.y == rhs.rawValue.y
	}

}
