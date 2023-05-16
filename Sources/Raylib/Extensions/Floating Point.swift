//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

//MARK: - Binary Representation

extension BinaryFloatingPoint {
	
	//MARK: Floating Point Conversions
	
	@_transparent public var toFloat: Float {
		.init(self)
	}
	
	@_transparent public var toDouble: Double {
		.init(self)
	}
	
	//MARK: Integer Conversions
	
	@_transparent public var toInt: Int {
		.init(self)
	}
	
	@_transparent public var toUInt: UInt {
		.init(self)
	}
	
	@_transparent public var toInt32: Int32 {
		.init(self)
	}
	
	@_transparent public var toUInt32: UInt32 {
		.init(self)
	}
	
	@_transparent public var toInt8: Int8 {
		.init(self)
	}
	
	@_transparent public var toUInt8: UInt8 {
		.init(self)
	}
	
}
