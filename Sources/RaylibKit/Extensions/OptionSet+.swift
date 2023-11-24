//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

extension OptionSet {
	
	//MARK: Operators
	
	public static func |(lhs: Self, rhs: Self) -> Self {
		lhs.union(rhs)
	}
	
	public static func |=(lhs: inout Self, rhs: Self) {
		lhs.formUnion(rhs)
	}
	
	public static func &(lhs: Self, rhs: Self) -> Self {
		lhs.intersection(rhs)
	}
	
	public static func &=(lhs: inout Self, rhs: Self) {
		lhs.formIntersection(rhs)
	}
	
}
