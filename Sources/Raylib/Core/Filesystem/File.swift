//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - File

public struct File {
	
	//MARK: Properties
	
	/// The file's path
	public let path: Path
	
	//MARK: Computed Properties
	
	/// Check if file exists
	@inlinable public var exists: Bool {
		path.isFile
	}
	
	/// Get filename
	@inlinable public var filename: String {
		GetFileName(path.underlying).toString
	}
	
	/// Get filename string without extension
	@inlinable public var name: String {
		GetFileNameWithoutExt(path.underlying).toString
	}
	
	/// Get extension for a filename string (includes dot: '.png')
	@inlinable public var `extension`: String {
		GetFileExtension(path.underlying).toString
	}
	
	/// Get file modification time (last write time)
	@inlinable public var modification: Int {
		GetFileModTime(path.underlying)
	}
	
	/// Get the files' parent directory
	@inlinable public var directory: Directory {
		.init(at: GetDirectoryPath(path.underlying).toPath)
	}
	
	//MARK: Initialization
	
	@usableFromInline init(at path: Path) {
		self.path = path
	}
	
	//MARK: Methods
	
	/// Check file extension (including point: .png, .wav)
	@inlinable public func `is`(extension ext: String) -> Bool {
		IsFileExtension(path.underlying, ext)
	}
	
	//MARK: Reading Methods
	
	/// Load file as bytes
	@inlinable public func loadAsBytes() -> [UInt8] {
		var count: UInt32 = 0
		guard let pointer = LoadFileData(path.underlying, &count) else {
			return []
		}
		defer { UnloadFileData(pointer) }
		return Array(UnsafeMutableBufferPointer(start: pointer, count: count.toInt))
	}
	
	/// Load file as text
	@inlinable public func loadAsText() -> String {
		guard let pointer = LoadFileText(path.underlying) else {
			return ""
		}
		defer { UnloadFileText(pointer) }
		return pointer.toString
	}
	
	/// Load file as image
	@inlinable public func loadAsImage() throws -> Image {
		LoadImage(path.underlying).toSwift
	}
	
	/// Load raw file data as image
	@inlinable public func loadAsRawImage(size width: Int, by height: Int, format: PixelFormat, offset: Int) throws -> Image {
		LoadImageRaw(path.underlying, width.toInt32, height.toInt32, format.toRaylib.toInt32, offset.toInt32).toSwift
	}
	
	/// Load file as animation
	@inlinable public func loadAsAnimation(frames: Int) throws -> Image {
		var frames = frames.toInt32
		return LoadImageAnim(path.underlying, &frames).toSwift
	}
	
	/// Load file as texture
	@inlinable public func loadAsTexture() throws -> Texture {
		// TODO: Error handling
		LoadTexture(path.underlying).toManaged
	}
	
	//MARK: Writing Methods
	
	/// Save text data to file
	@inlinable public func write(text: String) throws {
		_ = text.withCString { pointer in
			SaveFileText(path.underlying, UnsafeMutablePointer(mutating: pointer))
		}
		// TODO: Handle error
	}
	
	/// Save data to file
	@inlinable public func write(data: [UInt8]) throws {
		_ = data.withUnsafeBytes { buffer in
			SaveFileData(path.underlying, UnsafeMutableRawPointer(mutating: buffer.baseAddress), buffer.count.toUInt32)
		}
		// TODO: Handle error
	}
	
	@inlinable public func write(image: Image) {
		// TODO: Error Handling
		ExportImage(image.toRaylib, path.underlying)
	}
	
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension File {
	
	///  Load file data
	@inlinable public var data: Data? {
		var count: UInt32 = 0
		guard let pointer = LoadFileData(path.underlying, &count) else {
			return nil
		}
		defer { UnloadFileData(pointer) }
		return Data(buffer: UnsafeMutableBufferPointer(start: pointer, count: count.toInt))
	}
	
	/// Load file as JSON
	@inlinable public func loadAsJSON<T: Decodable>(of entity: T.Type = T.self, using decoder: JSONDecoder = .init()) throws -> T {
		guard let data = data else {
			throw DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: "Unable to load file", underlyingError: nil))
		}
		return try decoder.decode(T.self, from: data)
	}
	
	/// Save json data to file
	@inlinable public func write<T: Encodable>(json entity: T, using encoder: JSONEncoder = .init()) throws {
		try write(data: Array(encoder.encode(entity)))
	}
	
}
#endif
