//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-11-26.
//

import raylib

public protocol Texture: RawRepresentable<raylib.Texture> {
	var rawValue: raylib.Texture { get set }

	init(rawValue: raylib.Texture)
}

public struct UnmanagedTexture: Texture {
	public var rawValue: raylib.Texture

	public init(rawValue: raylib.Texture) {
		self.rawValue = rawValue
	}
}

public final class ManagedTexture: Texture {
	public var rawValue: raylib.Texture

	public init(rawValue: raylib.Texture) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadTexture(rawValue)
	}
}
