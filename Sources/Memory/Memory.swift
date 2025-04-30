//
//  Memory.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct Memory {}

public extension Memory {

	/// Internal memory allocator
	@inlinable static func allocate(size: Int) -> UnsafeMutableRawPointer {
		MemAlloc(size.toUInt32)
	}
	
	/// Internal memory reallocator
	@inlinable static func reallocate(_ pointer: UnsafeMutableRawPointer, size: Int) {
		MemRealloc(pointer, size.toUInt32)
	}
	
	/// Internal memory free
	@inlinable static func free(_ pointer: UnsafeMutableRawPointer) {
		MemFree(pointer)
	}
	
}
