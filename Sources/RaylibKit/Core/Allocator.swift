//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

public struct Allocator {
	
	/// Internal memory allocator
	@inlinable public static func allocate(size: Int) -> UnsafeMutableRawPointer {
		MemAlloc(size.toUInt32)
	}
	
	/// Internal memory reallocator
	@inlinable public static func reallocate(_ pointer: UnsafeMutableRawPointer, size: Int) {
		MemRealloc(pointer, size.toUInt32)
	}
	
	/// Internal memory free
	@inlinable public static func free(_ pointer: UnsafeMutableRawPointer) {
		MemFree(pointer)
	}
	
}
