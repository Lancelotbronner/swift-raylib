//
//  Music.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class Music: AudioObject {
	public var rawValue: raylib.Music

	@inlinable public init(rawValue: raylib.Music) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadMusicStream(rawValue)
	}

	@inlinable public var _stream: raylib.AudioStream { rawValue.stream }
}

public extension Music {

	convenience init(at path: Path) throws {
		self.init(rawValue: LoadMusicStream(path.rawValue))
	}

	/// Wether to loop the music
	@inlinable var isLooping: Bool {
		_read { yield rawValue.looping }
		_modify { yield &rawValue.looping }
	}

	@inlinable var frames: UInt32 {
		rawValue.frameCount
	}

	/// Get music time length (in seconds)
	@inlinable var timeLength: Float {
		GetMusicTimeLength(rawValue)
	}

	/// Get current music time played (in seconds)
	@inlinable var timePlayed: Float {
		GetMusicTimePlayed(rawValue)
	}

	/// Get current music progress [0,1].
	@inlinable var progress: Float {
		timePlayed / timeLength
	}

	/// Update (re-fill) music buffers if data already processed
	@inlinable func update() {
		UpdateMusicStream(rawValue)
	}

	/// Seek music to a position (in seconds)
	@inlinable func seek(to position: Float) {
		SeekMusicStream(rawValue, position)
	}

}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

public extension Music {
   convenience init(at path: Path, bundle: Bundle) throws {
	   try self.init(at: Path(bundle: bundle)[path])
   }
}
#endif
