//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import raylib

public protocol VectorProtocol: RandomAccessCollection, MutableCollection where Index == Int {
	init(_ value: Element)
}

//MARK: - Collection

extension VectorProtocol {

	@_transparent public var startIndex: Int { 
		0
	}

	@_transparent public func index(after i: Int) -> Int {
		i + 1
	}

	public subscript(position: Int) -> Element {
		@_transparent get {
			precondition(indices.contains(position), "Index out of bounds")
			return withUnsafeBytes(of: self) {
				$0.bindMemory(to: Element.self)[position]
			}
		}
		@_transparent set {
			precondition(indices.contains(position), "Index out of bounds")
			return withUnsafeMutableBytes(of: &self) {
				$0.bindMemory(to: Element.self)[position] = newValue
			}
		}
	}

	@_transparent public func makeIterator() -> some IteratorProtocol<Element> {
		VectorIterator(rawValue: self)
	}

}

public struct VectorIterator<Value: VectorProtocol>: IteratorProtocol {
	public let rawValue: Value
	public var i = 0

	@usableFromInline init(rawValue: Value) {
		self.rawValue = rawValue
	}

	@inlinable public mutating func next() -> Value.Element? {
		defer { i = (i &+ 1) % rawValue.endIndex }
		return withUnsafeBytes(of: self) {
			$0.bindMemory(to: Element.self)[i]
		}
	}
}

//MARK: - Expressible by Literal

extension VectorProtocol where Element: ExpressibleByIntegerLiteral {

	@_transparent public init(integerLiteral value: Element.IntegerLiteralType) {
		self.init(Element(integerLiteral: value))
	}
	
}

extension VectorProtocol where Element: ExpressibleByFloatLiteral {

	@_transparent public init(floatLiteral value: Element.FloatLiteralType) {
		self.init(Element(floatLiteral: value))
	}

}

//MARK: - Vector 2

public protocol Vector2Protocol: VectorProtocol {
	init(_ x: Element, _ y: Element)
}

extension Vector2Protocol {

	@_transparent public init(_ value: Element) {
		self.init(value, value)
	}

	@_transparent public var endIndex: Int { 1 }

}

//MARK: - Vector 3

public protocol Vector3Protocol: VectorProtocol {
	init(_ x: Element, _ y: Element, _ z: Element)
}

extension Vector3Protocol {

	@_transparent public init(_ value: Element) {
		self.init(value, value, value)
	}

	@_transparent public var endIndex: Int { 2 }

}

//MARK: - Vector 4

public protocol Vector4Protocol: VectorProtocol {
	init(_ x: Element, _ y: Element, _ z: Element, _ w: Element)
}

extension Vector4Protocol {

	@_transparent public init(_ value: Element) {
		self.init(value, value, value, value)
	}

	@_transparent public var endIndex: Int { 3 }

}
