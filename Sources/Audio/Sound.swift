//
//  Sound.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class Sound: AudioObject {
	public var rawValue: raylib.Sound
	/// Whether this sound is an alias
	public let isAlias: Bool

	@inlinable public init(rawValue: raylib.Sound, alias: Bool) {
		self.rawValue = rawValue
		self.isAlias = alias
	}

	deinit {
		(isAlias ? UnloadSoundAlias : UnloadSound)(rawValue)
	}

	@inlinable public var _stream: raylib.AudioStream { rawValue.stream }
}

public extension Sound {
	/// Create a new sound that shares the same sample data as the source sound, does not own the sound data
	@inlinable convenience init(alias source: Sound) {
		self.init(rawValue: LoadSoundAlias(source.rawValue), alias: true)
	}

	//	RLAPI Sound LoadSoundFromWave(Wave wave);                             // Load sound from wave data

	/// Checks if a sound is valid (data loaded and buffers initialized)
	@inlinable var isValid: Bool {
		IsSoundValid(rawValue)
	}

	/// Update sound buffer with new data
	@inlinable func update(with data: UnsafeRawPointer, sampleCount: Int) {
		UpdateSound(rawValue, data, Int32(sampleCount))
	}

	//MARK: - Filesystem Methods

	/// Load sound from file
	convenience init(at path: Path) throws {
		self.init(rawValue: LoadSound(path.rawValue), alias: false)
	}

}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

public extension Sound {
   convenience init(at path: Path, bundle: Bundle) throws {
	   try self.init(at: Path(bundle: bundle)[path])
   }
}
#endif
