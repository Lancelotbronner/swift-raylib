//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

public enum Audio {

	@inlinable public var isReady: Bool {
		IsAudioDeviceReady()
	}

	@inlinable public static func initialize() {
		InitAudioDevice()
	}

	@inlinable public static func close() {
		CloseAudioDevice()
	}

	@inlinable public func set(volume: Float) {
		SetMasterVolume(volume)
	}

}
