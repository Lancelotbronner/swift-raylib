//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

extension BinaryFloatingPoint {
	
	//MARK: - Floating Point

	@_transparent public var toFloat: Float {
		Float(self)
	}
	
	@_transparent public var toDouble: Double {
		Double(self)
	}
	
	//MARK: - Integer

	@_transparent public var toInt: Int {
		Int(self)
	}
	
	@_transparent public var toUInt: UInt {
		UInt(self)
	}
	
	@_transparent public var toInt32: Int32 {
		Int32(self)
	}
	
	@_transparent public var toUInt32: UInt32 {
		UInt32(self)
	}
	
	@_transparent public var toInt8: Int8 {
		Int8(self)
	}
	
	@_transparent public var toUInt8: UInt8 {
		UInt8(self)
	}
	
}
