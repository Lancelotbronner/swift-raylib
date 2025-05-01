//
//  Texture+.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-05.
//

import raylib

public extension Texture {

	//MARK: - Properties

	@inlinable var width: Int {
		rawValue.width.toInt
	}
	
	@inlinable var height: Int {
		rawValue.height.toInt
	}
	
	@inlinable var size: Vector2 {
		Vector2(rawValue.width.toFloat, rawValue.height.toFloat)
	}
	
	//MARK: - Attributes

	/// Set texture scaling filter mode
	@inlinable func filter(using algorithm: TextureFilter) {
		SetTextureFilter(rawValue, algorithm.rawValue)
	}

	/// Set texture wrapping mode
	@inlinable func wrap(using algorithm: TextureWrap) {
		SetTextureWrap(rawValue, algorithm.rawValue)
	}

	/// Update GPU texture with new data
	///
	/// NOTE: pixels data must match texture.format
	@inlinable func update(with image: Image) {
		UpdateTexture(rawValue, image.rawValue.data)
	}

	/// Update GPU texture rectangle with new data
	///
	/// NOTE: pixels data must match texture.format
	@inlinable func update(area: Rectangle, with image: Image) {
		UpdateTextureRec(rawValue, area.rawValue, image.rawValue.data)
	}

	//MARK: - Filesystem Methods

	/// Load texture from file into GPU memory (VRAM)
	@inlinable convenience init(at path: Path) throws {
		self.init(rawValue: LoadTexture(path.rawValue))
	}

	//MARK: - Conversion Methods

	/// Retrieve from GPU
	///
	/// NOTE: Compressed texture formats not supported
	@inlinable func retrieve() -> Image {
		Image(rawValue: LoadImageFromTexture(rawValue))
	}
	
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

public extension Texture {

	@inlinable convenience init(at path: Path, bundle: Bundle) throws {
		try self.init(at: Path(bundle: bundle)[path])
	}

}
#endif
