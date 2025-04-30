//
//  Font.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2022-01-08.
//

@preconcurrency import raylib

public final class Font: RawRepresentable, Sendable {
	public let rawValue: raylib.Font

	public init(rawValue: raylib.Font) {
		self.rawValue = rawValue
	}

	/// Load font from Image (XNA style)
	@inlinable public convenience init(image: Image, key: Color, firstCharacter: Int32) {
		self.init(rawValue: LoadFontFromImage(image.rawValue, key.rawValue, firstCharacter))
	}

	/// Get the default Font
	public static let `default` = Font(rawValue: GetFontDefault())

	//MARK: - Properties

	@inlinable public var size: Int {
		rawValue.baseSize.toInt
	}

	// TODO: LoadFontFromMemory
	// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
	// Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount);
	
	//MARK: - Measurement

	/// Measures the string size using the current font
	@inlinable public func measure(_ text: String, at size: Float = Renderer.pointSize, spacing: Float) -> Vector2 {
		Vector2(rawValue: MeasureTextEx(rawValue, text, size, spacing))
	}

	// TODO: GenImageFontAtlas
	// Generate image font atlas using chars info
	// Image GenImageFontAtlas(const GlyphInfo *chars, Rectangle **recs, int glyphCount, int fontSize, int padding, int packMethod);

}

//TODO: Font data
/*
 RLAPI GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount, int type);      // Load font data for further use
 RLAPI void UnloadFontData(GlyphInfo *chars, int glyphCount);                                 // Unload font chars info data (RAM)
 */

//MARK: - Filesystem Integration

extension File {
	
	/// Load font from file into GPU memory (VRAM)
	@inlinable public func loadAsFont() -> Font {
		Font(rawValue: LoadFont(path.rawValue))
	}
	
	/// Load font from file into GPU memory (VRAM)
	@inlinable public func loadAsFont(size: Int, characters: [Int32]) -> Font {
		let rawValue = characters.withUnsafeBufferPointer { buffer in
			LoadFontEx(path.rawValue, size.toInt32, buffer.baseAddress.map(UnsafeMutablePointer.init), characters.count.toInt32)
		}
		return Font(rawValue: rawValue)
	}
	
}
