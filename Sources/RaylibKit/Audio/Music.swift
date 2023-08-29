//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

public final class Music {

	@usableFromInline var underlying: CRaylib.Music

	@inlinable public init(underlying: CRaylib.Music) {
		self.underlying = underlying
	}

	deinit {
		UnloadMusicStream(underlying)
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

	/// Stop playing music
	@inlinable public func stop() {
		StopMusicStream(underlying)
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
		UpdateMusicStream(underlying)
	}

	/// Pause the music
	@inlinable public func pause() {
		PauseMusicStream(underlying)
	}

	@inlinable public func resume() {
		ResumeMusicStream(underlying)
	}

	/// Set wether the music is paused
	@inlinable public func paused(is value: Bool) {
		(value ? pause : resume)()
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
//MARK: - Raylib Integration

extension CRaylib.Music {

	@_transparent public var toSwift: Music {
		Music(underlying: self)
	}

}

extension Music {

	@_transparent public var toRaylib: CRaylib.Music {
		underlying
	}

}
