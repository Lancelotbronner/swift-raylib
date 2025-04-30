//
//  Image.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2022-01-06.
//

import raylib

public final class Image: RawRepresentable {
	public var rawValue: raylib.Image

	public init(rawValue: raylib.Image) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadImage(rawValue)
	}
}

public extension Image {

	//MARK: - Initialization

	/// Create an image from text (default font)
	@inlinable convenience init(of text: String, size: Int, color: Color) {
		self.init(rawValue: ImageText(text, size.toInt32, color.rawValue))
	}
	
	/// Create an image from text (custom sprite font)
	@inlinable convenience init(of text: String, size: Float, color: Color, spacing: Float, font: Font) {
		self.init(rawValue: ImageTextEx(font.rawValue, text, size, spacing, color.rawValue))
	}

	// TODO: LoadImageFromMemory
	// Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);

	//MARK: - Properties

	/// Check if an image is ready
	@inlinable var isReady: Bool {
		IsImageValid(rawValue)
	}

	@inlinable var width: Int {
		rawValue.width.toInt
	}

	@inlinable var height: Int {
		rawValue.height.toInt
	}

	@inlinable var size: Vector2 {
		Vector2(rawValue.width.toFloat, rawValue.height.toFloat)
	}

	@inlinable var mipmaps: Int {
		rawValue.mipmaps.toInt
	}

	@inlinable var format: PixelFormat {
		PixelFormat(rawValue: rawValue.format)
	}

	//MARK: - Canvas Methods

	@inlinable func draw(_ block: (Canvas) -> Void) {
		let renderer = Canvas(rawValue: &rawValue)
		block(renderer)
	}
	
	//MARK: - Conversion Methods

	/// Upload to GPU
	@inlinable func upload() -> some Texture {
		Texture(rawValue: LoadTextureFromImage(rawValue))
	}
	
	/// Convert image data to desired format
	@inlinable func convert(to format: PixelFormat) {
		ImageFormat(&rawValue, format.rawValue)
	}
	
	/// Premultiply alpha channel
	@inlinable func premultiply() {
		ImageAlphaPremultiply(&rawValue)
	}
	
	/// Compute all mipmap levels for a provided image
	@inlinable func generateMipmaps() {
		ImageMipmaps(&rawValue)
	}
	
	/// Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
	@inlinable func dither(_ rbpp: Int, _ gbpp: Int, _ bbpp: Int, _ abpp: Int) {
		ImageDither(&rawValue, rbpp.toInt32, gbpp.toInt32, bbpp.toInt32, abpp.toInt32)
	}
	
	//MARK: - Resize Methods

	/// Resize image according to the specified algorithm
	@inlinable func resize(to width: Int, _ height: Int, using algorithm: ResizeAlgorithm) {
		switch algorithm {
		case .bicubic: 
			ImageResize(&rawValue, width.toInt32, height.toInt32)
		case .nearest: 
			ImageResizeNN(&rawValue, width.toInt32, height.toInt32)
		case let .fill(offset, color):
			ImageResizeCanvas(&rawValue, width.toInt32, height.toInt32, offset.x, offset.y, color.rawValue)
		}
	}
	
	/// Convert image to power-of-two
	@inlinable func resizeToNextPowerOfTwo(fill: Color) {
		ImageToPOT(&rawValue, fill.rawValue)
	}
	
	/// Crop an image to a defined rectangle
	@inlinable func crop(to frame: Rectangle) {
		ImageCrop(&rawValue, frame.rawValue)
	}
	
	/// Crop image depending on alpha value
	@inlinable func cropAlpha(under threshold: Float) {
		ImageAlphaCrop(&rawValue, threshold)
	}
	
	//MARK: - Copy Methods

	/// Create an image duplicate (useful for transformations)
	@inlinable func copy() -> Image {
		Image(rawValue: ImageCopy(rawValue))
	}
	
	//MARK: - Reading Methods

	/// Create an image from another image piece
	@inlinable func sliced(_ area: Rectangle) -> Image {
		Image(rawValue: ImageFromImage(rawValue, area.rawValue))
	}
	
	/// Get image pixel color at (x, y) position
	@inlinable func pixel(at x: Int, _ y: Int) -> Color {
		Color(rawValue: GetImageColor(rawValue, x.toInt32, y.toInt32))
	}
	
	/// Get image alpha border rectangle
	@inlinable func border(alpha threshold: Float) -> Rectangle {
		Rectangle(rawValue: GetImageAlphaBorder(rawValue, threshold))
	}

	//MARK: - Transform Methods

	/// Flip image
	@inlinable func flip(on axis: Axis) {
		switch axis {
		case .horizontal: ImageFlipHorizontal(&rawValue)
		case .vertical: ImageFlipVertical(&rawValue)
		}
	}

	/// Rotate image
	@inlinable func rotate(towards direction: RotationDirection) {
		switch direction {
		case .left: ImageRotateCW(&rawValue)
		case .right: ImageRotateCCW(&rawValue)
		}
	}

	//MARK: - Color Methods

	/// Modify image color: tint
	@inlinable func tint(with color: Color) {
		ImageColorTint(&rawValue, color.rawValue)
	}

	/// Modify image color: invert
	@inlinable func invert() {
		ImageColorInvert(&rawValue)
	}

	/// Modify image color: grayscale
	@inlinable func grayscale() {
		ImageColorGrayscale(&rawValue)
	}

	/// Modify image color: contrast (-100 to 100)
	@inlinable func contrast(of ratio: Float) {
		ImageColorContrast(&rawValue, ratio)
	}

	/// Modify image color: brightness (-255 to 255)
	@inlinable func brightness(of ratio: Int) {
		ImageColorBrightness(&rawValue, ratio.toInt32)
	}

	/// Modify image color: replace color
	@inlinable func replace(_ color: Color, with other: Color) {
		ImageColorReplace(&rawValue, color.rawValue, other.rawValue)
	}

	//MARK: - Alpha Methods

	/// Clear alpha channel to desired color
	@inlinable func clear(alpha threshold: Float, to color: Color) {
		ImageAlphaClear(&rawValue, color.rawValue, threshold)
	}

	/// Apply alpha mask to image
	@inlinable func mask(using alpha: Image) {
		ImageAlphaMask(&rawValue, alpha.rawValue)
	}

	//MARK: - Filesystem Methods

	/// Load image from file into CPU memory (RAM)
	@inlinable convenience init(at path: Path) {
		self.init(rawValue: LoadImage(path.rawValue))
	}

	/// Export image data to file
	@inlinable func export(to path: Path) {
		ExportImage(rawValue, path.rawValue)
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

//MARK: - Foundation Integration

extension File {

	/// Load file as image
	@inlinable public func loadAsImage() -> Image {
		Image(at: path)
	}

	/// Load raw file data as image
	@inlinable public func loadAsRawImage(size width: Int, by height: Int, format: PixelFormat, offset: Int) -> Image {
		Image(rawValue: LoadImageRaw(path.rawValue, width.toInt32, height.toInt32, format.rawValue, offset.toInt32))
	}

	/// Load file as animation
	@inlinable public func loadAsAnimation(frames: Int) -> (image: Image, frames: Int) {
		var frames: Int32 = 0
		let image = Image(rawValue: LoadImageAnim(path.rawValue, &frames))
		return (image, frames.toInt)
	}

	@inlinable public func writeImage(_ value: Image) {
		value.export(to: path)
	}

}

#if canImport(Foundation)
import Foundation

extension Image {

	/// Load image from file into CPU memory (RAM)
	@inlinable public convenience init(at path: Path, from bundle: Bundle) {
		self.init(at: Path(bundle: bundle)[path])
	}

}
#endif
