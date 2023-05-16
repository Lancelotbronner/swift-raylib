//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

public final class Music {

	@usableFromInline var underlying: CRaylib.Music

	@inlinable public init(_ underlying: CRaylib.Music) {
		self.underlying = underlying
	}

	/// Load music stream from file
	///
	/// - Parameter filepath: The path to the music file
	@inlinable public init(load filepath: String) {
		underlying = LoadMusicStream(filepath)
	}

	/// Wether to loop the music
	@inlinable public var isLooping: Bool {
		_read { yield underlying.looping }
		_modify { yield &underlying.looping }
	}

	/// Wether the music is currently playing
	@inlinable public var isPlaying: Bool {
		IsMusicStreamPlaying(underlying)
	}

	deinit {
		UnloadMusicStream(underlying)
	}

	@inlinable public var frames: UInt32 {
		underlying.frameCount
	}

	/// Get music time length (in seconds)
	@inlinable public var length: Float {
		GetMusicTimeLength(underlying)
	}

	/// Get current music time played (in seconds)
	@inlinable public var played: Float {
		GetMusicTimePlayed(underlying)
	}

	/// Starts playing music
	@inlinable public func play() {
		PlayMusicStream(underlying)
	}

	/// Updates buffers for music streaming
	@inlinable public func update() {
		UpdateMusicStream(underlying)
	}

	/// Stop playing music
	@inlinable public func stop() {
		StopMusicStream(underlying)
	}

	/// Pause the music
	@inlinable public func pause() {
		PauseMusicStream(underlying)
	}

	@inlinable public func resume() {
		ResumeMusicStream(underlying)
	}

	/// Seek music to a position (in seconds)
	@inlinable public func seek(to position: Float) {
		SeekMusicStream(underlying, position)
	}

	/// Set volume for music (1.0 is max level)
	@inlinable public func set(volume: Float) {
		SetMusicVolume(underlying, volume)
	}

	/// Set pitch for a music (1.0 is base level)
	@inlinable public func set(pitch: Float) {
		SetMusicPitch(underlying, pitch)
	}

	/// Set pan for a music (0.5 is center)
	@inlinable public func set(pan: Float) {
		SetMusicPan(underlying, pan)
	}
	
}
