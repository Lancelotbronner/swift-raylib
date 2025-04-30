//
//  File.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public struct File: RawRepresentable {
	public let rawValue: String

	public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

public extension File {

	//MARK: - Filesystem

	init(_ path: Path) {
		self.init(rawValue: path.rawValue)
	}

	/// The file's path
	@inlinable var path: Path {
		Path(rawValue: rawValue)
	}

	/// Whether the current file exists
	@inlinable var exists: Bool {
		FileExists(rawValue)
	}

	/// Get the files' parent directory
	@inlinable var directory: Directory {
		path.parent.directory
	}

	//MARK: - Metadata

	/// Get filename
	@inlinable var filename: String {
		GetFileName(path.rawValue).toString
	}
	
	/// Get filename string without extension
	@inlinable var name: String {
		GetFileNameWithoutExt(path.rawValue).toString
	}
	
	/// Get extension for a filename string (includes dot: '.png')
	@inlinable var `extension`: String {
		GetFileExtension(path.rawValue).toString
	}
	
	/// Get file modification time (last write time)
	@inlinable var modification: Int {
		GetFileModTime(path.rawValue)
	}
	
	/// Check file extension (including point: .png, .wav)
	@inlinable func `is`(_ ext: String) -> Bool {
		IsFileExtension(path.rawValue, ext)
	}
	
	//MARK: - Reading

	/// Load file as bytes
	@inlinable func loadAsBytes() -> UnsafeMutableBufferPointer<UInt8> {
		var count: UInt32 = 0
		guard let pointer = LoadFileData(path.rawValue, &count) else {
			return UnsafeMutableBufferPointer(start: nil, count: 0)
		}
		defer { UnloadFileData(pointer) }
		return UnsafeMutableBufferPointer(start: pointer, count: count.toInt)
	}
	
	/// Load file as text
	@inlinable func loadAsText() -> String {
		guard let pointer = LoadFileText(path.rawValue) else {
			return ""
		}
		defer { UnloadFileText(pointer) }
		return pointer.toString
	}
	
	/// Load file as texture
	@inlinable func loadAsTexture() -> some Texture {
		// TODO: Error handling
		Texture(rawValue: LoadTexture(path.rawValue))
	}

	//MARK: - Writing

	/// Save text data to file
	@inlinable func writeText(_ value: String) {
		_ = value.withCString { pointer in
			SaveFileText(path.rawValue, UnsafeMutablePointer(mutating: pointer))
		}
		// TODO: Handle error
	}

	/// Save data to file
	@inlinable func writeBytes(_ value: UnsafeMutableBufferPointer<UInt8>) {
		SaveFileData(path.rawValue, UnsafeMutableRawPointer(mutating: value.baseAddress), value.count.toInt32)
		// TODO: Handle error
	}

	/// Save data to file
	@inlinable func writeBytes(_ value: UnsafeBufferPointer<UInt8>) {
		writeBytes(UnsafeMutableBufferPointer(mutating: value))
	}
	
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

public extension File {

	@inlinable init(_ path: String, bundle: Bundle) {
		self.init(rawValue: Path(bundle: bundle)[path].rawValue)
	}

	@inlinable init(_ path: Path, bundle: Bundle) {
		self.init(rawValue: Path(bundle: bundle)[path].rawValue)
	}

	///  Load file data
	@inlinable func loadAsData() -> Data? {
		Data(buffer: loadAsBytes())
	}
	
	/// Load file as JSON
	@inlinable func loadAsJSON<T: Decodable>(of entity: T.Type = T.self, using decoder: JSONDecoder = .init()) throws -> T {
		guard let data = loadAsData() else {
			throw DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: "Unable to load file", underlyingError: nil))
		}
		return try decoder.decode(T.self, from: data)
	}

	@inlinable func writeData(_ value: Data) {
		value.withUnsafeBytes {
			writeBytes($0.bindMemory(to: UInt8.self))
		}
	}

	/// Save json data to file
	@inlinable func writeJson<T: Encodable>(_ value: T, using encoder: JSONEncoder = .init()) throws {
		writeData(try encoder.encode(value))
	}
	
}
#endif
