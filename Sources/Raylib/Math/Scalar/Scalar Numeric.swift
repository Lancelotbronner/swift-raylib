//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Numeric Arithmetics

// TODO: Instead lerp TO value BY time

extension Numeric {
	
	@inlinable public func lerped(from start: Self, to end: Self) -> Self {
		start + self * (end - start)
	}
	
	@inlinable public mutating func lerp(from start: Self, to end: Self) {
		self = lerped(from: start, to: end)
	}
	
}

//MARK: - Numeric & Comparable Arithmetics

extension Numeric where Self: Comparable {
	
	//MARK: Lerping Methods
	
	@inlinable public func lerped(in range: Range<Self>) -> Self {
		lerped(from: range.lowerBound, to: range.upperBound)
	}
	
	@inlinable public mutating func lerp(in range: Range<Self>) {
		self = lerped(in: range)
	}
	
}
