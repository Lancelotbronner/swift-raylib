////
////  File.swift
////  
////
////  Created by Christophe Bronner on 2021-12-26.
////
//
//#if canImport(Darwin)
//import Darwin
//#elseif canImport(ucrt)
//import ucrt
//#elseif canImport(Glibc)
//import Glibc
//#elseif canImport(Musl)
//import Musl
//#else
//#error("Unsupported platform")
//#endif
//
//extension VectorProtocol where Element: FloatingPoint {
//	
//	//MARK: - Properties
//
//	@inlinable public var normalized: Self {
//		normalized(from: 0, to: 1)
//	}
//	
//	@inlinable public var magnitude: Element {
//		sqrt(magnitude2)
//	}
//	
//	//MARK: - Normalization Methods
//
//	@inlinable public func normalized(from start: Element, to end: Element) -> Self {
//		(self - start) / (end - start)
//	}
//	
//	@inlinable public func normalized(in range: Range<Element>) -> Self {
//		normalized(from: range.lowerBound, to: range.upperBound)
//	}
//	
//	@inlinable public mutating func normalize(from start: Element, to end: Element) {
//		self = normalized(from: start, to: end)
//	}
//	
//	@inlinable public mutating func normalize(in range: Range<Element>) {
//		self = normalized(in: range)
//	}
//	
//	//MARK: - Remapping Methods
//
//	@inlinable public func remapped(input inputStart: Element, to inputEnd: Element, output outputStart: Element, to outputEnd: Element) -> Self {
//		normalized(from: inputStart, to: inputEnd) * (outputEnd - outputStart) + outputStart
//	}
//	
//	@inlinable public func remapped(from input: Range<Element>, to output: Range<Element>) -> Self {
//		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
//	}
//	
//	@inlinable public mutating func remap(input inputStart: Element, to inputEnd: Element, output outputStart: Element, to outputEnd: Element) {
//		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
//	}
//	
//	@inlinable public mutating func remap(from input: Range<Element>, to output: Range<Element>) {
//		self = remapped(from: input, to: output)
//	}
//	
//	//MARK: - Element Arithmetics
//
//	@inlinable public static func / (lhs: Self, rhs: Element) -> Self {
//		lhs.binary(with: rhs, operation: /)
//	}
//	
//	@inlinable public static func /= (lhs: inout Self, rhs: Element) {
//		lhs.binary(with: rhs, operation: /=)
//	}
//
//	//MARK: - Vector Arithmetics
//
//	@inlinable public static func / (lhs: Self, rhs: Self) -> Self {
//		lhs.binary(with: rhs, operation: /)
//	}
//	
//	@inlinable public static func /= (lhs: inout Self, rhs: Self) {
//		lhs.binary(with: rhs, operation: /=)
//	}
//	
//}
