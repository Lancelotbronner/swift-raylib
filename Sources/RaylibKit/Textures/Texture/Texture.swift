//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import raylib

extension Texture {

	//MARK: - Properties

	@inlinable public var width: Int {
		rawValue.width.toInt
	}
	
	@inlinable public var height: Int {
		rawValue.height.toInt
	}
	
	@inlinable public var size: Vector2 {
		Vector2(rawValue.width.toFloat, rawValue.height.toFloat)
	}
	
	//MARK: - Attributes

	@inlinable public func filter(using algorithm: TextureFilter) {
		SetTextureFilter(rawValue, algorithm.rawValue)
	}
	
	@inlinable public func wrap(using algorithm: TextureWrap) {
		SetTextureWrap(rawValue, algorithm.rawValue)
	}
	
	@inlinable public func update(with image: Image) {
		UpdateTexture(rawValue, image.rawValue.data)
	}
	
	@inlinable public func update(area: Rectangle, with image: Image) {
		UpdateTextureRec(rawValue, area.rawValue, image.rawValue.data)
	}

	//MARK: - Filesystem Methods

	public convenience init(at path: Path) throws {
		self.init(rawValue: LoadTexture(path.rawValue))
	}

	//MARK: - Conversion Methods

	/// Retrieve from GPU
	@inlinable public func retrieve() -> Image {
		Image(rawValue: LoadImageFromTexture(rawValue))
	}
	
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension Texture {

	public convenience init(at path: Path, bundle: Bundle) throws {
		try self.init(at: Path(bundle: bundle)[path])
	}

}
#endif
