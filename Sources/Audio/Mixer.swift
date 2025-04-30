//
//  Mixer.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2025-04-30.
//

import raylib

public struct AudioMixer {}

public extension AudioMixer {
	/// Attach audio stream processor to the entire audio pipeline, receives the samples as 'float'
	@inlinable static func attach(_ processor: AudioCallback) {
		AttachAudioMixedProcessor(processor)
	}

	/// Detach audio stream processor from the entire audio pipeline
	@inlinable static func detach(_ processor: AudioCallback) {
		DetachAudioMixedProcessor(processor)
	}
}
