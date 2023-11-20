//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct File {
	
	/// The file's path
	public let path: Path

	public init(at path: Path) {
		self.path = path
	}

	//MARK: - Filesystem
	
	/// Check if file exists
	@inlinable public var exists: Bool {
		path.isFile
	}

	/// Get the files' parent directory
	@inlinable public var directory: Directory {
		Directory(at: Path(rawValue: GetDirectoryPath(path.rawValue).toString))
	}

	//MARK: - Metadata

	/// Get filename
	@inlinable public var filename: String {
		GetFileName(path.rawValue).toString
	}
	
	/// Get filename string without extension
	@inlinable public var name: String {
		GetFileNameWithoutExt(path.rawValue).toString
	}
	
	/// Get extension for a filename string (includes dot: '.png')
	@inlinable public var `extension`: String {
		GetFileExtension(path.rawValue).toString
	}
	
	/// Get file modification time (last write time)
	@inlinable public var modification: Int {
		GetFileModTime(path.rawValue)
	}
	
	/// Check file extension (including point: .png, .wav)
	@inlinable public func `is`(extension ext: String) -> Bool {
		IsFileExtension(path.rawValue, ext)
	}
	
	//MARK: - Reading

	/// Load file as bytes
	@inlinable public func loadAsBytes() -> [UInt8] {
		var count: UInt32 = 0
		guard let pointer = LoadFileData(path.rawValue, &count) else {
			return []
		}
		defer { UnloadFileData(pointer) }
		return Array(UnsafeMutableBufferPointer(start: pointer, count: count.toInt))
	}
	
	/// Load file as text
	@inlinable public func loadAsText() -> String {
		guard let pointer = LoadFileText(path.rawValue) else {
			return ""
		}
		defer { UnloadFileText(pointer) }
		return pointer.toString
	}
	
	/// Load file as image
	@inlinable public func loadAsImage() throws -> Image {
		LoadImage(path.rawValue).toSwift
	}
	
	/// Load raw file data as image
	@inlinable public func loadAsRawImage(size width: Int, by height: Int, format: PixelFormat, offset: Int) throws -> Image {
		LoadImageRaw(path.rawValue, width.toInt32, height.toInt32, format.toRaylib.toInt32, offset.toInt32).toSwift
	}
	
	/// Load file as animation
	@inlinable public func loadAsAnimation(frames: Int) throws -> Image {
		var frames = frames.toInt32
		return LoadImageAnim(path.rawValue, &frames).toSwift
	}
	
	/// Load file as texture
	@inlinable public func loadAsTexture() throws -> Texture {
		// TODO: Error handling
		LoadTexture(path.rawValue).toManaged
	}

	/// Load file as image
	@inlinable public func loadAsMusic() throws -> Music {
		// TODO: Error handling
		LoadMusicStream(path.rawValue).toSwift
	}

	//MARK: - Writing

	/// Save text data to file
	@inlinable public func write(text: String) throws {
		_ = text.withCString { pointer in
			SaveFileText(path.rawValue, UnsafeMutablePointer(mutating: pointer))
		}
		// TODO: Handle error
	}
	
	/// Save data to file
	@inlinable public func write(data: [UInt8]) throws {
		_ = data.withUnsafeBytes { buffer in
			SaveFileData(path.rawValue, UnsafeMutableRawPointer(mutating: buffer.baseAddress), buffer.count.toInt32)
		}
		// TODO: Handle error
	}
	
	@inlinable public func write(image: Image) {
		// TODO: Error Handling
		ExportImage(image.toRaylib, path.rawValue)
	}
	
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension File {
	
	///  Load file data
	@inlinable public var data: Data? {
		var count: UInt32 = 0
		guard let pointer = LoadFileData(path.rawValue, &count) else {
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
