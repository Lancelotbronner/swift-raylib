//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//


//MARK: - Floating Point Arithmetics

//extension FloatingPoint {
//
//	//MARK: Normalization Methods
//
//	@inlinable public func normalized(from start: Self, to end: Self) -> Self {
//		(self - start) / (end - start)
//	}
//
//	@inlinable public func normalized(in range: Range<Self>) -> Self {
//		normalized(from: range.lowerBound, to: range.upperBound)
//	}
//
//	@inlinable public mutating func normalized(in range: Range<Self>) {
//		self = normalized(in: range)
//	}
//
//	//MARK: Remapping Methods
//
//	@inlinable public func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self {
//		normalized(from: inputStart, to: inputEnd) * (outputEnd - outputStart) + outputStart
//	}
//
//	@inlinable public func remapped(from input: Range<Self>, to output: Range<Self>) -> Self {
//		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
//	}
//
//	@inlinable public mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) {
//		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
//	}
//
//	@inlinable public mutating func remap(from input: Range<Self>, to output: Range<Self>) {
//		self = remapped(from: input, to: output)
//	}
//
//}
