//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Serialization

public struct Serialization {
	
	//MARK: Methods
	
	/// Compress data (DEFLATE algorithm)
	@inlinable public static func compress(_ data: UnsafeBufferPointer<UInt8>) -> UnsafeBufferPointer<UInt8> {
		var length: Int32 = 0
		let pointer = CompressData(data.baseAddress, data.count.toInt32, &length)
		return .init(start: pointer, count: length.toInt)
	}
	
	/// Decompress data (DEFLATE algorithm)
	@inlinable public static func decompress(_ data: UnsafeBufferPointer<UInt8>) -> UnsafeBufferPointer<UInt8> {
		var length: Int32 = 0
		let pointer = DecompressData(data.baseAddress, data.count.toInt32, &length)
		return .init(start: pointer, count: length.toInt)
	}
	
	/// Encode data to Base64 string
	@inlinable public static func encode(_ data: UnsafeBufferPointer<UInt8>) -> String {
		var length: Int32 = 0
		let pointer = EncodeDataBase64(data.baseAddress, data.count.toInt32, &length)
		return String(cString: pointer!)
	}
	
	/// Decode Base64 string data
	@inlinable public static func decode(_ string: String) -> UnsafeBufferPointer<UInt8> {
		var length: Int32 = 0
		let pointer = string.withCString { string in
			DecodeDataBase64(.init(OpaquePointer(string)), &length)
		}
		return .init(start: pointer, count: length.toInt)
	}
	
}
