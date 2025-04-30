//
//  AudioObject.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2025-04-30.
//

import raylib

public protocol AudioObject {
	/// The audio stream of this object.
	var _stream: raylib.AudioStream { get }
}

public extension AudioObject {

	/// Checks if the audio is valid (buffers initialized)
	@inlinable var isValid: Bool {
		IsAudioStreamValid(_stream)
	}

	/// Get or set whether the audio is currently playing
	@inlinable var isPlaying: Bool {
		get { IsAudioStreamPlaying(_stream) }
		set { (newValue ? PlayAudioStream : StopAudioStream)(_stream) }
	}

	/// Check if any audio buffers requires refill
	@inlinable var isProcessed: Bool {
		IsAudioStreamProcessed(_stream)
	}

	/// Update audio stream buffers with data
	@inlinable func update(with data: UnsafeRawPointer!, frameCount: Int) {
		UpdateAudioStream(_stream, data, Int32(frameCount))
	}

	/// Play audio stream
	@inlinable func play() {
		PlayAudioStream(_stream)
	}

	/// Stop audio stream
	@inlinable func stop() {
		StopAudioStream(_stream)
	}

	/// Restarts the audio from the beginning
	@inlinable func restart() {
		stop()
		play()
	}

	/// Pause audio stream
	@inlinable func pause() {
		PauseAudioStream(_stream)
	}

	/// Resume audio stream
	@inlinable func resume() {
		ResumeAudioStream(_stream)
	}

	/// Set wether the audio is paused
	@inlinable func paused(is value: Bool) {
		(value ? pause : resume)()
	}

	//MARK: - Configuration

	/// Set volume for an audio stream (1.0 is max level)
	@inlinable func set(volume: Float) {
		SetAudioStreamVolume(_stream, volume)
	}

	/// Set pitch for an audio stream (1.0 is base level)
	@inlinable func set(pitch: Float) {
		SetAudioStreamPitch(_stream, pitch)
	}

	/// Set pan for an audio stream (0.5 is center)
	@inlinable func set(pan: Float) {
		SetAudioStreamPan(_stream, pan)
	}

}
