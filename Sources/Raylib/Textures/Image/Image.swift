//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-06.
//

import CRaylib

public final class Image {
	
	//MARK: Properties
	
	@usableFromInline var underlying: CRaylib.Image
	
	//MARK: Computed Properties

//	@inlinable public var isReady: Bool {
//		IsImageReady(underlying)
//	}
	
	@inlinable public var width: Int {
		underlying.width.toInt
	}
	
	@inlinable public var height: Int {
		underlying.height.toInt
	}
	
	@inlinable public var size: Vector2f {
		Vector2f(underlying.width.toFloat, underlying.height.toFloat)
	}
	
	@inlinable public var mipmaps: Int {
		underlying.mipmaps.toInt
	}
	
	@inlinable public var format: PixelFormat {
		PixelFormat(raylib: underlying.format)
	}
	
	//MARK: Initialization
	
	@inlinable public init(underlying image: CRaylib.Image) {
		underlying = image
	}
	
	/// Create an image from text (default font)
	@inlinable public convenience init(of text: String, size: Int, color: Color) {
		self.init(underlying: ImageText(text, size.toInt32, color.toRaylib))
	}
	
	/// Create an image from text (custom sprite font)
	@inlinable public convenience init(of text: String, size: Int, color: Color, spacing: Int, font: Font) {
		self.init(underlying: ImageTextEx(font.toRaylib, text, size.toFloat, spacing.toFloat, color.toRaylib))
	}
	
	// TODO: LoadImageFromMemory
	// Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);

	deinit {
		UnloadImage(underlying)
	}

	//MARK: Canvas Methods

	@inlinable public func draw(_ block: (Canvas) -> Void) {
		let renderer = Canvas(to: &underlying)
		block(renderer)
	}
	
	//MARK: Conversion Methods
	
	/// Upload to GPU
	@inlinable public func upload() -> Texture {
		LoadTextureFromImage(underlying).toManaged
	}
	
	/// Convert image data to desired format
	@inlinable public func convert(to format: PixelFormat) {
		ImageFormat(&underlying, format.toRaylib.toInt32)
	}
	
	/// Premultiply alpha channel
	@inlinable public func premultiply() {
		ImageAlphaPremultiply(&underlying)
	}
	
	/// Compute all mipmap levels for a provided image
	@inlinable public func generateMipmaps() {
		ImageMipmaps(&underlying)
	}
	
	/// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
	@inlinable public func dither(_ rbpp: Int, _ gbpp: Int, _ bbpp: Int, _ abpp: Int) {
		ImageDither(&underlying, rbpp.toInt32, gbpp.toInt32, bbpp.toInt32, abpp.toInt32)
	}
	
	//MARK: Resize Methods
	
	/// Resize image according to the specified algorithm
	@inlinable public func resize(to width: Int, _ height: Int, using algorithm: ResizeAlgorithm) {
		switch algorithm {
		case .bicubic: ImageResize(&underlying, width.toInt32, height.toInt32)
		case .nearest: ImageResizeNN(&underlying, width.toInt32, height.toInt32)
		case let .fill(offset, color): ImageResizeCanvas(&underlying, width.toInt32, height.toInt32, offset.x.toInt32, offset.y.toInt32, color.toRaylib)
		}
	}
	
	/// Convert image to power-of-two
	@inlinable public func resizeToNextPowerOfTwo(fill: Color) {
		ImageToPOT(&underlying, fill.toRaylib)
	}
	
	/// Crop an image to a defined rectangle
	@inlinable public func crop(to frame: Rectangle) {
		ImageCrop(&underlying, frame.toRaylib)
	}
	
	/// Crop image depending on alpha value
	@inlinable public func cropAlpha(under threshold: Float) {
		ImageAlphaCrop(&underlying, threshold)
	}
	
	//MARK: Copy Methods
	
	/// Create an image duplicate (useful for transformations)
	@inlinable public func copy() -> Image {
		ImageCopy(underlying).toSwift
	}
	
	/// Create an image duplicate (useful for transformations)
	@inlinable public func copy(_ area: Rectangle, into other: Image) -> Image {
		ImageCopy(underlying).toSwift
	}
	
	//MARK: Reading Methods
	
	/// Create an image from another image piece
	@inlinable public func slice(_ area: Rectangle) -> Image {
		ImageFromImage(underlying, area.toRaylib).toSwift
	}
	
	/// Get image pixel color at (x, y) position
	@inlinable public func pixel(at x: Int, _ y: Int) -> Color {
		GetImageColor(underlying, x.toInt32, y.toInt32).toSwift
	}
	
	/// Get image alpha border rectangle
	@inlinable public func border(alpha threshold: Float) -> Rectangle {
		GetImageAlphaBorder(underlying, threshold).toSwift
	}

	//MARK: Transform Methods

	/// Flip image
	@inlinable public func flip(on axis: Axis) {
		switch axis {
		case .horizontal: ImageFlipHorizontal(&underlying)
		case .vertical: ImageFlipVertical(&underlying)
		}
	}

	/// Rotate image
	@inlinable public func rotate(towards direction: Rotation) {
		switch direction {
		case .left: ImageRotateCW(&underlying)
		case .right: ImageRotateCCW(&underlying)
		}
	}

	//MARK: Color Methods

	/// Modify image color: tint
	@inlinable public func tint(with color: Color) {
		ImageColorTint(&underlying, color.toRaylib)
	}

	/// Modify image color: invert
	@inlinable public func invert() {
		ImageColorInvert(&underlying)
	}

	/// Modify image color: grayscale
	@inlinable public func grayscale() {
		ImageColorGrayscale(&underlying)
	}

	/// Modify image color: contrast (-100 to 100)
	@inlinable public func contrast(of ratio: Float) {
		ImageColorContrast(&underlying, ratio)
	}

	/// Modify image color: brightness (-255 to 255)
	@inlinable public func brightness(of ratio: Int) {
		ImageColorBrightness(&underlying, ratio.toInt32)
	}

	/// Modify image color: replace color
	@inlinable public func replace(_ color: Color, with other: Color) {
		ImageColorReplace(&underlying, color.toRaylib, other.toRaylib)
	}

	//MARK: Alpha Methods

	/// Clear alpha channel to desired color
	@inlinable public func clear(alpha threshold: Float, to color: Color) {
		ImageAlphaClear(&underlying, color.toRaylib, threshold)
	}

	/// Apply alpha mask to image
	@inlinable public func mask(using alpha: Image) {
		ImageAlphaMask(&underlying, alpha.toRaylib)
	}
	
}

// TODO: Image color data
/*
 RLAPI Color *LoadImageColors(Image image);                                                               // Load color data from image as a Color array (RGBA - 32bit)
 RLAPI void UnloadImageColors(Color *colors);                                                             // Unload color data loaded with LoadImageColors()
 */

// TODO: Image color palette
/*
 RLAPI Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);                         // Load colors palette from image as a Color array (RGBA - 32bit)
 RLAPI void UnloadImagePalette(Color *colors);                                                            // Unload colors palette loaded with LoadImagePalette()
 */

//MARK: - Raylib Integration

extension CRaylib.Image {

	@_transparent public var toSwift: Image {
		Image(underlying: self)
	}

}

extension Image {

	@_transparent public var toRaylib: CRaylib.Image {
		underlying
	}

}
