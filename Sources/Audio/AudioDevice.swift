//
//  AudioDevice.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct AudioDevice {}

public extension AudioDevice {

	@inlinable var isReady: Bool {
		IsAudioDeviceReady()
	}

	@inlinable static func initialize() {
		InitAudioDevice()
	}

	@inlinable static func close() {
		CloseAudioDevice()
	}

	@inlinable func set(volume: Float) {
		SetMasterVolume(volume)
	}

}
