//
//  Timeline.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2022-01-18.
//

public struct Timeline {
	@usableFromInline var _time = 0

	@inlinable public init() { }
}

public extension Timeline {

	@inlinable var time: Int {
		_time
	}

	//MARK: - Configuration Methods
	
	@inlinable mutating func update() {
		skip(frames: 1)
	}

	@inlinable mutating func skip(frames: Int) {
		_time &+= frames
	}
	
	@inlinable mutating func reset() {
		_time = 0
	}
	
	//MARK: - Frame Methods
	
	@inlinable func every(frames: Int) -> Bool {
		guard frames != 0 else { return false }
		return _time % frames == 0
	}

	@inlinable func every(frames: Int, do block: () -> Void) {
		guard every(frames: frames) else { return }
		block()
	}

	@inlinable func intervals(frames: Int, every interval: Int = 2) -> Bool {
		_time / frames % interval == 0
	}

	@inlinable func intervals(frames: Int, every interval: Int = 2, do block: () -> Void) {
		guard intervals(frames: frames, every: interval) else { return }
		block()
	}

	//MARK: - Seconds Methods
	
	@inlinable func every(seconds: Double) -> Bool {
		every(frames: frames(seconds: seconds))
	}

	@inlinable func every(seconds: Double, do block: () -> Void) {
		guard every(seconds: seconds) else { return }
		block()
	}

	@inlinable func intervals(seconds: Double, every interval: Int = 2) -> Bool {
		intervals(frames: frames(seconds: seconds), every: interval)
	}

	@inlinable func intervals(seconds: Double, every interval: Int = 2, do block: () -> Void) {
		guard intervals(seconds: seconds, every: interval) else { return }
		block()
	}

	//MARK: - Milliseconds Methods

	@inlinable func every(milliseconds: Int) -> Bool {
		every(frames: frames(milliseconds: milliseconds))
	}

	@inlinable func every(milliseconds: Int, do block: () -> Void) {
		guard every(milliseconds: milliseconds) else { return }
		block()
	}

	@inlinable func intervals(milliseconds: Int, every interval: Int = 2) -> Bool {
		intervals(frames: frames(milliseconds: milliseconds), every: interval)
	}

	@inlinable func intervals(milliseconds: Int, every interval: Int = 2, do block: () -> Void) {
		guard intervals(milliseconds: milliseconds, every: interval) else { return }
		block()
	}

	//MARK: - Times Per Second Methods
	
	@inlinable func every(timesPerSecond: Int) -> Bool {
		every(frames: frames(timesPerSecond: timesPerSecond))
	}

	@inlinable func every(timesPerSecond: Int, do block: () -> Void) {
		guard every(timesPerSecond: timesPerSecond) else { return }
		block()
	}

	@inlinable func intervals(timesPerSecond: Int, every interval: Int = 2) -> Bool {
		intervals(frames: frames(timesPerSecond: timesPerSecond), every: interval)
	}

	@inlinable func intervals(timesPerSecond: Int, every interval: Int = 2, do block: () -> Void) {
		guard intervals(timesPerSecond: timesPerSecond, every: interval) else { return }
		block()
	}

	//MARK: - Utility Methods

	@inlinable func frames(seconds: Double) -> Int {
		Int(Time.fps.toDouble * seconds)
	}

	@inlinable func frames(milliseconds: Int) -> Int {
		Time.fps * milliseconds / 1000
	}

	@inlinable func frames(timesPerSecond: Int) -> Int {
		Time.fps / timesPerSecond
	}
	
}
