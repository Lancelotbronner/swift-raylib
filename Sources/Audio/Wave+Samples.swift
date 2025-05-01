//
//  Wave+Samples.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2025-05-01.
//

import raylib

public final class WaveSamples {
	@usableFromInline var _buffer: UnsafeMutableBufferPointer<Float>

	@usableFromInline init(_ buffer: UnsafeMutableBufferPointer<Float>) {
		_buffer = buffer
	}
	
	deinit {
		UnloadWaveSamples(_buffer.baseAddress)
	}
}

public extension WaveSamples {
	@inlinable func withUnsafeBufferPointer(do block: (UnsafeBufferPointer<Float>) -> Void) {
		block(UnsafeBufferPointer(_buffer))
	}

	@inlinable func withUnsafeMutableBufferPointer(do block: (UnsafeMutableBufferPointer<Float>) -> Void) {
		block(_buffer)
	}
}
