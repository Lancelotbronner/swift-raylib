//
//  OptionSet+.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-11-30.
//

public extension OptionSet {

	//MARK: - Operators
	
	static func |(lhs: Self, rhs: Self) -> Self {
		lhs.union(rhs)
	}
	
	static func |=(lhs: inout Self, rhs: Self) {
		lhs.formUnion(rhs)
	}
	
	static func &(lhs: Self, rhs: Self) -> Self {
		lhs.intersection(rhs)
	}
	
	static func &=(lhs: inout Self, rhs: Self) {
		lhs.formIntersection(rhs)
	}
	
}
