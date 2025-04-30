//
//  AudioStream.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class AudioStream: AudioObject {
	public var rawValue: raylib.AudioStream
//	@usableFromInline var _callback: Callback?

	@inlinable public init(rawValue: raylib.AudioStream) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadAudioStream(rawValue)
	}

	@inlinable
	public var _stream: raylib.AudioStream { rawValue }
}

public extension AudioStream {

	/// Default size for new audio streams
	@inlinable static func setBufferSizeDefault(_ value: Int) {
		SetAudioStreamBufferSizeDefault(Int32(value))
	}
}

public extension AudioStream {
//	typealias Callback = (_ bufferData: UnsafeMutableRawPointer?, _ frames: Int) -> Void

	/// Load audio stream (to stream raw audio pcm data)
	@inlinable convenience init(sampleRate: Int, sampleSize: Int, channels: Int) {
		self.init(rawValue: LoadAudioStream(UInt32(sampleRate), UInt32(sampleSize), UInt32(channels)))
	}

	/// Checks if the audio stream is valid (buffers initialized)
	@inlinable var isValid: Bool {
		IsAudioStreamValid(rawValue)
	}

	/// Check if any audio stream buffers requires refill
	@inlinable var isProcessed: Bool {
		IsAudioStreamProcessed(rawValue)
	}

	/// Audio thread callback to request new data
	@inlinable func onCallback(do callback: AudioCallback) {
		SetAudioStreamCallback(rawValue, callback)
	}

	/// Attach audio stream processor to stream, receives the samples as 'float'
	@inlinable func attach(_ processor: AudioCallback) {
		AttachAudioStreamProcessor(rawValue, processor)
	}

	/// Detach audio stream processor from stream
	@inlinable func detach(_ processor: AudioCallback) {
		DetachAudioStreamProcessor(rawValue, processor)
	}
	
}
