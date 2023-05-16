//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

//MARK: - Remapping Functions

public protocol RemappingFunctions {
	
	func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self
	mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self)
	
}

extension RemappingFunctions {
	
	//MARK: Defaults
	
	@inlinable public func remapped(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) -> Self where Self: FloatingPoint {
		(self - inputStart) / (inputEnd - inputStart) * (outputEnd - outputStart) + outputStart
	}
	
	@inlinable public mutating func remap(input inputStart: Self, to inputEnd: Self, output outputStart: Self, to outputEnd: Self) {
		self = remapped(input: inputStart, to: inputEnd, output: outputStart, to: outputEnd)
	}
	
	//MARK: Methods
	
	@inlinable public func remapped(from input: Range<Self>, to output: Range<Self>) -> Self where Self: Comparable {
		remapped(input: input.lowerBound, to: input.upperBound, output: output.lowerBound, to: output.upperBound)
	}
	
	@inlinable public mutating func remap(from input: Range<Self>, to output: Range<Self>) where Self: Comparable {
		self = remapped(from: input, to: output)
	}
	
}
