//
//  File.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2023-12-20.
//

public struct Point2: Sendable {

	public var x: Int32
	public var y: Int32

}

//MARK: - Vector

extension Point2: Vector2Protocol {

	public typealias Element = Int32

	@_transparent public init(_ x: Int32, _ y: Int32) {
		self.x = x
		self.y = y
	}

	@_transparent public init(_ value: some BinaryInteger) {
		self.init(value.toInt32)
	}

	@_transparent public init(_ x: some BinaryInteger, _ y: some BinaryInteger) {
		self.init(x.toInt32, y.toInt32)
	}

	@_transparent public init(_ value: Vector2) {
		self.init(value.x.toInt32, value.y.toInt32)
	}

}

//MARK: - Constants

extension Point2 {
	public static let zero = Point2(0, 0)
	public static let one = Point2(1, 1)
}

//MARK: - Add Operation

extension Point2: AdditiveArithmetic/*, ScalarAddOperation, ScalarSubtractOperation*/ {

	@_transparent public static func + (lhs: Point2, rhs: Point2) -> Point2 {
		Point2(lhs.x + rhs.x, lhs.y + rhs.y)
	}

	@_transparent public static func += (lhs: inout Point2, rhs: Point2) {
		lhs.x += rhs.x
		lhs.y += rhs.y
	}

	@_transparent public static func + (lhs: Point2, rhs: some BinaryInteger) -> Point2 {
		let rhs = rhs.toInt32
		return Point2(lhs.x + rhs, lhs.y + rhs)
	}

	@_transparent public static func += (lhs: inout Point2, rhs: some BinaryInteger) {
		let rhs = rhs.toInt32
		lhs.x += rhs
		lhs.y += rhs
	}

}

//MARK: - Subtract Operation

extension Point2 {

	@_transparent public static func - (lhs: Point2, rhs: Point2) -> Point2 {
		Point2(lhs.x - rhs.x, lhs.y - rhs.y)
	}

	@_transparent public static func -= (lhs: inout Point2, rhs: Point2) {
		lhs.x -= rhs.x
		lhs.y -= rhs.y
	}

	@_transparent public static func - (lhs: Point2, rhs: some BinaryInteger) -> Point2 {
		let rhs = rhs.toInt32
		return Point2(lhs.x - rhs, lhs.y - rhs)
	}

	@_transparent public static func -= (lhs: inout Point2, rhs: some BinaryInteger) {
		let rhs = rhs.toInt32
		lhs.x -= rhs
		lhs.y -= rhs
	}

}

//MARK: - Multiply Operation

extension Point2 {

	@_transparent public static func * (lhs: Point2, rhs: Point2) -> Point2 {
		Point2(lhs.x * rhs.x, lhs.y * rhs.y)
	}

	@_transparent public static func *= (lhs: inout Point2, rhs: Point2) {
		lhs.x *= rhs.x
		lhs.y *= rhs.y
	}

	@_transparent public static func * (lhs: Point2, rhs: some BinaryInteger) -> Point2 {
		let rhs = rhs.toInt32
		return Point2(lhs.x * rhs, lhs.y * rhs)
	}

	@_transparent public static func *= (lhs: inout Point2, rhs: some BinaryInteger) {
		let rhs = rhs.toInt32
		lhs.x *= rhs
		lhs.y *= rhs
	}

}

//MARK: - Divide Operation

extension Point2 {

	@_transparent public static func / (lhs: Point2, rhs: Point2) -> Point2 {
		Point2(lhs.x / rhs.x, lhs.y / rhs.y)
	}

	@_transparent public static func /= (lhs: inout Point2, rhs: Point2) {
		lhs.x /= rhs.x
		lhs.y /= rhs.y
	}

	@_transparent public static func / (lhs: Point2, rhs: some BinaryInteger) -> Point2 {
		let rhs = rhs.toInt32
		return Point2(lhs.x / rhs, lhs.y / rhs)
	}

	@_transparent public static func /= (lhs: inout Point2, rhs: some BinaryInteger) {
		let rhs = rhs.toInt32
		lhs.x /= rhs
		lhs.y /= rhs
	}

}

//MARK: - Modulo Operation

extension Point2 {

	@_transparent public static func % (lhs: Point2, rhs: Point2) -> Point2 {
		Point2(lhs.x % rhs.x, lhs.y % rhs.y)
	}

	@_transparent public static func %= (lhs: inout Point2, rhs: Point2) {
		lhs.x %= rhs.x
		lhs.y %= rhs.y
	}

	@_transparent public static func % (lhs: Point2, rhs: some BinaryInteger) -> Point2 {
		let rhs = rhs.toInt32
		return Point2(lhs.x % rhs, lhs.y % rhs)
	}

	@_transparent public static func %= (lhs: inout Point2, rhs: some BinaryInteger) {
		let rhs = rhs.toInt32
		lhs.x %= rhs
		lhs.y %= rhs
	}

}
