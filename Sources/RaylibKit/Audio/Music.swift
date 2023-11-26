//
//  File.swift
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

	/// Wether to loop the music
	@inlinable public var isLooping: Bool {
		_read { yield rawValue.looping }
		_modify { yield &rawValue.looping }
	}

	/// Wether the music is currently playing
	@inlinable public var isPlaying: Bool {
		IsMusicStreamPlaying(rawValue)
	}

	@inlinable public var frames: UInt32 {
		rawValue.frameCount
	}

	/// Get music time length (in seconds)
	@inlinable public var length: Float {
		GetMusicTimeLength(rawValue)
	}

	/// Get current music time played (in seconds)
	@inlinable public var played: Float {
		GetMusicTimePlayed(rawValue)
	}

	/// Starts playing music
	@inlinable public func play() {
		PlayMusicStream(rawValue)
	}

	/// Stop playing music
	@inlinable public func stop() {
		StopMusicStream(rawValue)
	}

	/// Set wether the music is playing
	@inlinable public func playing(is value: Bool) {
		(value ? play : stop)()
	}

	/// Restarts the music from the beginning
	@inlinable public func restart() {
		stop()
		play()
	}

	/// Updates buffers for music streaming
	@inlinable public func update() {
		UpdateMusicStream(rawValue)
	}

	/// Pause the music
	@inlinable public func pause() {
		PauseMusicStream(rawValue)
	}

	@inlinable public func resume() {
		ResumeMusicStream(rawValue)
	}

	/// Set wether the music is paused
	@inlinable public func paused(is value: Bool) {
		(value ? pause : resume)()
	}

	/// Seek music to a position (in seconds)
	@inlinable public func seek(to position: Float) {
		SeekMusicStream(rawValue, position)
	}

	/// Set volume for music (1.0 is max level)
	@inlinable public func set(volume: Float) {
		SetMusicVolume(rawValue, volume)
	}

	/// Set pitch for a music (1.0 is base level)
	@inlinable public func set(pitch: Float) {
		SetMusicPitch(rawValue, pitch)
	}

	/// Set pan for a music (0.5 is center)
	@inlinable public func set(pan: Float) {
		SetMusicPan(rawValue, pan)
	}
	
}

//MARK: - Filesystem Integration

extension File {

	/// Load file as image
	@inlinable public func loadAsMusic() -> Music {
		// TODO: Error handling
		Music(rawValue: LoadMusicStream(path.rawValue))
	}

}
