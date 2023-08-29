//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Normalization Functions

public protocol NormalizationFunctions {
	
	func normalized(from start: Self, to end: Self) -> Self
	mutating func normalize(from start: Self, to end: Self)
	
}

extension NormalizationFunctions {
	
	//MARK: Defaults
	
	@inlinable public func normalized(from start: Self, to end: Self) -> Self where Self: FloatingPoint {
		(self - start) / (end - start)
	}
	
	@inlinable public mutating func normalize(from start: Self, to end: Self) {
		self = normalized(from: start, to: end)
	}
	
	//MARK: Methods
	
	@inlinable public func normalized(in range: Range<Self>) -> Self where Self: Comparable {
		normalized(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func normalize(in range: Range<Self>) where Self: Comparable {
		self = normalized(in: range)
	}
	
}

extension NormalizationFunctions where Self: ExpressibleByIntegerLiteral {
	
	//MARK: Computed Properties
	
	@inlinable public var normalized: Self {
		normalized(from: 0, to: 1)
	}
	
}
