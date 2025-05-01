//
//  Wave.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public final class Wave {
	public var rawValue: raylib.Wave

	@inlinable public init(rawValue: raylib.Wave) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadWave(rawValue)
	}
}

public extension Wave {
	/// Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
	@inlinable convenience init(_ fileType: String, data: UnsafeRawBufferPointer) {
		self.init(rawValue: LoadWaveFromMemory(fileType, data.baseAddress, Int32(data.count)))
	}

	/// Checks if wave data is valid (data loaded and parameters)
	@inlinable var isValid: Bool {
		IsWaveValid(rawValue)
	}

	/// Copy a wave to a new wave
	@inlinable func copy() -> Wave {
		Wave(rawValue: WaveCopy(rawValue))
	}

	/// Crop a wave to defined frames range
	@inlinable func crop(from start: Int, to end: Int) {
		WaveCrop(&rawValue, Int32(start), Int32(end))
	}

	/// Crop a wave to defined frames range
	@inlinable func crop(to range: some RangeExpression<Int>) {
		let range = range.relative(to: 0..<Int(rawValue.frameCount))
		WaveCrop(&rawValue, Int32(range.lowerBound), Int32(range.upperBound))
	}

	/// Convert wave data to desired format
	@inlinable func format(sampleRate: Int, sampleSize: Int, channels: Int) {
		WaveFormat(&rawValue, Int32(sampleRate), Int32(sampleSize), Int32(channels))
	}

	// Load samples data from wave as a 32bit float data array
	@inlinable func samples() -> WaveSamples {
		let base = LoadWaveSamples(rawValue)
		let size = Int(rawValue.frameCount * rawValue.channels)
		let buffer = UnsafeMutableBufferPointer<Float>(start: base, count: size)
		return WaveSamples(buffer)
	}

	/// Export wave data to file, returns true on success
	@discardableResult
	@inlinable func export(to path: Path) -> Bool {
		ExportWave(rawValue, path.rawValue)
	}

	/// Export wave sample data to code (.h), returns true on success
	@discardableResult
	@inlinable func exportAsCode(to path: Path) -> Bool {
		ExportWaveAsCode(rawValue, path.rawValue)
	}

	/// Load wave data from file
	@inlinable convenience init(at path: Path) {
		self.init(rawValue: LoadWave(path.rawValue))
	}
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

public extension Wave {
	@inlinable convenience init(at path: Path, bundle: Bundle) {
		self.init(at: Path(bundle: bundle)[path])
	}
}
#endif
