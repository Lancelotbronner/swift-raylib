//
//  Texture.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2023-11-26.
//

import raylib

public final class Texture: RawRepresentable {
	public var rawValue: raylib.Texture
	public let interop: InteropFlags

	@inlinable public init(rawValue: raylib.Texture, flags interop: InteropFlags) {
		self.rawValue = rawValue
		self.interop = interop
	}

	@inlinable public convenience init(rawValue: raylib.Texture) {
		self.init(rawValue: rawValue, flags: .managed)
	}

	deinit {
		if interop.contains(.managed) {
			UnloadTexture(rawValue)
		}
	}

	public struct InteropFlags: OptionSet, Sendable {
		public let rawValue: UInt8

		@inlinable public init(rawValue: UInt8) {
			self.rawValue = rawValue
		}
	}
}

public extension Texture.InteropFlags {
	static let managed = Self(rawValue: 0x1)
}
