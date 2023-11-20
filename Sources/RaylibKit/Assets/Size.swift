//
//  File.swift
//
//
//  Created by Christophe Bronner on 2021-12-27.
//

public struct Size<Scalar> {
	
	public var width: Scalar
	public var height: Scalar
	
	public init(width: Scalar, height: Scalar) {
		self.width = width
		self.height = height
	}
	
	public init(_ value: Scalar) {
		self.init(width: value, height: value)
	}
	
}
