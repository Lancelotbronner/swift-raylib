//
//  Serialization.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct Serialization {}

public extension Serialization {

	//MARK: - Compression

	/// Compress data (DEFLATE algorithm)
	@inlinable static func compress(_ data: UnsafeBufferPointer<UInt8>) -> UnsafeBufferPointer<UInt8> {
		var length: Int32 = 0
		let pointer = CompressData(data.baseAddress, data.count.toInt32, &length)
		return .init(start: pointer, count: length.toInt)
	}
	
	/// Decompress data (DEFLATE algorithm)
	@inlinable static func decompress(_ data: UnsafeBufferPointer<UInt8>) -> UnsafeBufferPointer<UInt8> {
		var length: Int32 = 0
		let pointer = DecompressData(data.baseAddress, data.count.toInt32, &length)
		return .init(start: pointer, count: length.toInt)
	}

	//MARK: - Encoding

	/// Encode data to Base64 string
	@inlinable static func encode(_ data: UnsafeBufferPointer<UInt8>) -> String {
		var length: Int32 = 0
		let pointer = EncodeDataBase64(data.baseAddress, data.count.toInt32, &length)
		return String(cString: pointer!)
	}
	
	/// Decode Base64 string data
	@inlinable static func decode(_ string: String) -> UnsafeBufferPointer<UInt8> {
		var length: Int32 = 0
		let pointer = string.withCString { string in
			DecodeDataBase64(.init(OpaquePointer(string)), &length)
		}
		return .init(start: pointer, count: length.toInt)
	}

	//MARK: - Compute

	/// Compute CRC32 hash code
	@inlinable static func crc32(_ data: UnsafeBufferPointer<UInt8>) -> Int {
		Int(ComputeCRC32(UnsafeMutableRawPointer(mutating: data.baseAddress), Int32(data.count)))
	}

	// Compute MD5 hash code, returns static int[4] (16 bytes)
	@inlinable static func md5(_ data: UnsafeBufferPointer<UInt8>) -> MD5 {
		var hash = MD5()
		_LoadMD5(&hash, ComputeMD5(UnsafeMutableRawPointer(mutating: data.baseAddress), Int32(data.count)))
		return hash
	}

	// Compute SHA1 hash code, returns static int[5] (20 bytes)
	@inlinable static func sha1(_ data: UnsafeBufferPointer<UInt8>) -> SHA1 {
		var hash = SHA1()
		_LoadSHA1(&hash, ComputeSHA1(UnsafeMutableRawPointer(mutating: data.baseAddress), Int32(data.count)))
		return hash
	}

}
