//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-08.
//

import CRaylib

//MARK: - Font

public struct Font {
	
	//MARK: Static Computed Properties
	
	/// Get the default Font
	@inlinable public static var `default`: Font {
		GetFontDefault().toUnmanaged.toSwift
	}
	
	//MARK: Properties
	
	@usableFromInline var implementation: ImplementationOfFont
	
	//MARK: Computed Properties
	
	//MARK: Initialization
	
	@usableFromInline init(_ implementation: ImplementationOfFont) {
		self.implementation = implementation
	}
	
	/// Load font from Image (XNA style)
	@usableFromInline init(image: Image, key: Color, firstCharacter: Int32) {
		implementation = LoadFontFromImage(image.toRaylib, key.toRaylib, firstCharacter).toManaged
	}
	
	// TODO: LoadFontFromMemory
	// Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
	// Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount);
	
	//MARK: Methods
	
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
		LoadFont(path.underlying).toManaged.toSwift
	}
	
	/// Load font from file into GPU memory (VRAM)
	@inlinable public func loadAsFont(size: Int, characters: [Int32]) -> Font {
		characters.withContiguousStorageIfAvailable { buffer in
			LoadFontEx(path.underlying, size.toInt32, buffer.baseAddress.map(UnsafeMutablePointer.init), characters.count.toInt32)
		}!.toManaged.toSwift
	}
	
}
