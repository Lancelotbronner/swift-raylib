//
//  FloatingPoint+.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-01.
//

public extension BinaryFloatingPoint {
	
	//MARK: - Floating Point

	@_transparent var toFloat: Float {
		Float(self)
	}
	
	@_transparent var toDouble: Double {
		Double(self)
	}
	
	//MARK: - Integer

	@_transparent var toInt: Int {
		Int(self)
	}
	
	@_transparent var toUInt: UInt {
		UInt(self)
	}
	
	@_transparent var toInt32: Int32 {
		Int32(self)
	}
	
	@_transparent var toUInt32: UInt32 {
		UInt32(self)
	}
	
	@_transparent var toInt8: Int8 {
		Int8(self)
	}
	
	@_transparent var toUInt8: UInt8 {
		UInt8(self)
	}
	
}
