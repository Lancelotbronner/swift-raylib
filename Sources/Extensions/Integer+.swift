//
//  Integer+.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-01.
//

public extension BinaryInteger {
	
	//MARK: - Integer Conversions

	@_transparent var toInt: Int {
		numericCast(self)
	}
	
	@_transparent var toUInt: UInt {
		numericCast(self)
	}
	
	@_transparent var toInt32: Int32 {
		numericCast(self)
	}
	
	@_transparent var toUInt32: UInt32 {
		numericCast(self)
	}
	
	@_transparent var toInt8: Int8 {
		numericCast(self)
	}
	
	@_transparent var toUInt8: UInt8 {
		numericCast(self)
	}
	
	//MARK: - Floating Point
	
	@_transparent var toFloat: Float {
		Float(self)
	}
	
	@_transparent var toDouble: Double {
		Double(self)
	}
	
}
