//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

extension BinaryInteger {
	
	//MARK: Integer Conversions
	
	@_transparent public var toInt: Int {
		numericCast(self)
	}
	
	@_transparent public var toUInt: UInt {
		numericCast(self)
	}
	
	@_transparent public var toInt32: Int32 {
		numericCast(self)
	}
	
	@_transparent public var toUInt32: UInt32 {
		numericCast(self)
	}
	
	@_transparent public var toInt8: Int8 {
		numericCast(self)
	}
	
	@_transparent public var toUInt8: UInt8 {
		numericCast(self)
	}
	
	//MARK: Floating Point Conversions
	
	@_transparent public var toFloat: Float {
		.init(self)
	}
	
	@_transparent public var toDouble: Double {
		.init(self)
	}
	
}
