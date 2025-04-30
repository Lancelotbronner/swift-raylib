//
//  RenderTexture.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class RenderTexture: RawRepresentable {
	public var rawValue: raylib.RenderTexture

	public init(rawValue: raylib.RenderTexture) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadRenderTexture(rawValue)
	}
}

public extension RenderTexture {

	//MARK: - Properties

	@inlinable var depth: Texture {
		Texture(rawValue: rawValue.depth, flags: [])
	}
	
	@inlinable var texture: Texture {
		Texture(rawValue: rawValue.texture, flags: [])
	}
	
	//MARK: - Initialization

	@inlinable convenience init(size width: Int, by height: Int) {
		self.init(rawValue: LoadRenderTexture(width.toInt32, height.toInt32))
	}
	
	@inlinable convenience init(size: Vector2) {
		self.init(rawValue: LoadRenderTexture(size.x.toInt32, size.y.toInt32))
	}
	
}
