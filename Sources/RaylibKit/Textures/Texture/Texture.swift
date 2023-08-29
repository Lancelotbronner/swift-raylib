//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import CRaylib

//MARK: - Texture

public protocol Texture {
	
	var toRaylib: CRaylib.Texture { get }
	
}

extension Texture {
	
	//MARK: Computed Properties
	
	@inlinable public var width: Int {
		toRaylib.width.toInt
	}
	
	@inlinable public var height: Int {
		toRaylib.height.toInt
	}
	
	@inlinable public var size: Vector2f {
		Vector2f(toRaylib.width.toFloat, toRaylib.height.toFloat)
	}
	
	//MARK: Methods
	
	@inlinable public func filter(using algorithm: TextureFilter) {
		SetTextureFilter(toRaylib, algorithm.toRaylib.toInt32)
	}
	
	@inlinable public func wrap(using algorithm: TextureWrap) {
		SetTextureWrap(toRaylib, algorithm.toRaylib.toInt32)
	}
	
	@inlinable public func update(with image: Image) {
		UpdateTexture(toRaylib, image.underlying.data)
	}
	
	@inlinable public func update(area: Rectangle, with image: Image) {
		UpdateTextureRec(toRaylib, area.toRaylib, image.underlying.data)
	}
	
	//MARK: Conversion Methods
	
	/// Retrieve from GPU
	@inlinable public func retrieve() -> Image {
		LoadImageFromTexture(toRaylib).toSwift
	}
	
}

//MARK: - Raylib Integration

extension CRaylib.Texture: MemoryManageable {
	
	@inlinable public static func unload(instance: CRaylib.Texture) {
		UnloadTexture(instance)
	}
	
}

extension Unmanaged: Texture where Subject == CRaylib.Texture {
	@inlinable public var toRaylib: Subject { underlying }
}

extension Managed: Texture where Subject == CRaylib.Texture {
	@inlinable public var toRaylib: Subject { underlying }
}
