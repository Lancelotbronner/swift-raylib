//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Comparable Arithmetics

extension Comparable {
	
	//MARK: Clamping Methods
	
	@inlinable public mutating func minimum(of value: Self) {
		self = max(self, value)
	}
	
	@inlinable public mutating func maximum(of value: Self) {
		self = min(self, value)
	}
	
	@inlinable public mutating func clamp(between min: Self, and max: Self) {
		minimum(of: min)
		maximum(of: max)
	}
	
	@inlinable public func clamped(between minimum: Self, and maximum: Self) -> Self {
		min(max(self, minimum), maximum)
	}
	
}
