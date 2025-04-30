//
//  Music.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class Music {
	public var rawValue: raylib.Music

	@inlinable public init(rawValue: raylib.Music) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadMusicStream(rawValue)
	}
}

public extension Music {

	/// Wether to loop the music
	@inlinable var isLooping: Bool {
		_read { yield rawValue.looping }
		_modify { yield &rawValue.looping }
	}

	/// Wether the music is currently playing
	@inlinable var isPlaying: Bool {
		IsMusicStreamPlaying(rawValue)
	}

	@inlinable var frames: UInt32 {
		rawValue.frameCount
	}

	/// Get music time length (in seconds)
	@inlinable var length: Float {
		GetMusicTimeLength(rawValue)
	}

	/// Get current music time played (in seconds)
	@inlinable var played: Float {
		GetMusicTimePlayed(rawValue)
	}

	/// Starts playing music
	@inlinable func play() {
		PlayMusicStream(rawValue)
	}

	/// Stop playing music
	@inlinable func stop() {
		StopMusicStream(rawValue)
	}

	/// Set wether the music is playing
	@inlinable func playing(is value: Bool) {
		(value ? play : stop)()
	}

	/// Restarts the music from the beginning
	@inlinable func restart() {
		stop()
		play()
	}

	/// Updates buffers for music streaming
	@inlinable func update() {
		UpdateMusicStream(rawValue)
	}

	/// Pause the music
	@inlinable func pause() {
		PauseMusicStream(rawValue)
	}

	@inlinable func resume() {
		ResumeMusicStream(rawValue)
	}

	/// Set wether the music is paused
	@inlinable func paused(is value: Bool) {
		(value ? pause : resume)()
	}

	/// Seek music to a position (in seconds)
	@inlinable func seek(to position: Float) {
		SeekMusicStream(rawValue, position)
	}

	/// Set volume for music (1.0 is max level)
	@inlinable func set(volume: Float) {
		SetMusicVolume(rawValue, volume)
	}

	/// Set pitch for a music (1.0 is base level)
	@inlinable func set(pitch: Float) {
		SetMusicPitch(rawValue, pitch)
	}

	/// Set pan for a music (0.5 is center)
	@inlinable func set(pan: Float) {
		SetMusicPan(rawValue, pan)
	}

	//MARK: - Filesystem Methods

	convenience init(at path: Path) throws {
		self.init(rawValue: LoadMusicStream(path.rawValue))
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
