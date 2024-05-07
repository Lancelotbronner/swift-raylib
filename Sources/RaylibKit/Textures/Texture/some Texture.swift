//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-11-26.
//

import raylib

public final class Texture: RawRepresentable {
	public var rawValue: raylib.Texture
	private var interop: InteropFlags

	public convenience init(rawValue: raylib.Texture) {
		self.init(rawValue: rawValue, flags: .managed)
	}

	public init(rawValue: raylib.Texture, flags interop: InteropFlags) {
		self.rawValue = rawValue
		self.interop = interop
	}

	deinit {
		if interop.contains(.managed) {
			UnloadTexture(rawValue)
		}
	}

	public struct InteropFlags: OptionSet {
		public var rawValue: UInt8

		public init(rawValue: UInt8) {
			self.rawValue = rawValue
		}

		public static let managed = Self(rawValue: 0x1)
	}

}
