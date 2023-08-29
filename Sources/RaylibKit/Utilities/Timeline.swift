//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-18.
//

//MARK: - Timeline

public struct Timeline {
	
	//MARK: Properties
	
	@usableFromInline var counter: UInt = 0
	
	//MARK: Computed Properties
	
	@inlinable public var time: Int {
		counter.toInt
	}
	
	//MARK: Initialization
	
	@inlinable public init() { }
	
	//MARK: - Configuration Methods
	
	@inlinable public mutating func update() {
		skip(frames: 1)
	}

	@inlinable public mutating func skip(frames: UInt) {
		counter = counter &+ frames
	}
	
	@inlinable public mutating func reset() {
		counter = 0
	}
	
	//MARK: - Frame Methods
	
	@inlinable public func every(frames: UInt) -> Bool {
		guard frames != 0 else { return false }
		return counter % frames.toUInt == 0
	}

	@inlinable public func every(frames: UInt, do block: () -> Void) {
		guard every(frames: frames) else { return }
		block()
	}

	@inlinable public func intervals(frames: UInt, every interval: UInt = 2) -> Bool {
		counter / frames.toUInt % interval.toUInt == 0
	}

	@inlinable public func intervals(frames: UInt, every interval: UInt = 2, do block: () -> Void) {
		guard intervals(frames: frames, every: interval) else { return }
		block()
	}

	//MARK: - Seconds Methods
	
	@inlinable public func every(seconds: Double) -> Bool {
		every(frames: frames(seconds: seconds))
	}

	@inlinable public func every(seconds: Double, do block: () -> Void) {
		guard every(seconds: seconds) else { return }
		block()
	}

	@inlinable public func intervals(seconds: Double, every interval: UInt = 2) -> Bool {
		intervals(frames: frames(seconds: seconds), every: interval)
	}

	@inlinable public func intervals(seconds: Double, every interval: UInt = 2, do block: () -> Void) {
		guard intervals(seconds: seconds, every: interval) else { return }
		block()
	}

	//MARK: - Milliseconds Methods

	@inlinable public func every(milliseconds: UInt) -> Bool {
		every(frames: frames(milliseconds: milliseconds))
	}

	@inlinable public func every(milliseconds: UInt, do block: () -> Void) {
		guard every(milliseconds: milliseconds) else { return }
		block()
	}

	@inlinable public func intervals(milliseconds: UInt, every interval: UInt = 2) -> Bool {
		intervals(frames: frames(milliseconds: milliseconds), every: interval)
	}

	@inlinable public func intervals(milliseconds: UInt, every interval: UInt = 2, do block: () -> Void) {
		guard intervals(milliseconds: milliseconds, every: interval) else { return }
		block()
	}

	//MARK: - Times Per Second Methods
	
	@inlinable public func every(timesPerSecond: UInt) -> Bool {
		every(frames: frames(timesPerSecond: timesPerSecond))
	}

	@inlinable public func every(timesPerSecond: UInt, do block: () -> Void) {
		guard every(timesPerSecond: timesPerSecond) else { return }
		block()
	}

	@inlinable public func intervals(timesPerSecond: UInt, every interval: UInt = 2) -> Bool {
		intervals(frames: frames(timesPerSecond: timesPerSecond), every: interval)
	}

	@inlinable public func intervals(timesPerSecond: UInt, every interval: UInt = 2, do block: () -> Void) {
		guard intervals(timesPerSecond: timesPerSecond, every: interval) else { return }
		block()
	}

	//MARK: - Utility Methods

	@usableFromInline func frames(seconds: Double) -> UInt {
		(Time.fps.toDouble * seconds).toUInt
	}

	@usableFromInline func frames(milliseconds: UInt) -> UInt {
		Time.fps.toUInt * milliseconds / 1000
	}

	@usableFromInline func frames(timesPerSecond: UInt) -> UInt {
		Time.fps.toUInt / timesPerSecond
	}
	
}
