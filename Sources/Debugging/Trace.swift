//
//  Trace.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Trace {}

public struct TraceLevel: RawRepresentable, Comparable, Sendable {
	public let rawValue: UInt32

	@inlinable
	public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}
}

public extension Trace {

	//MARK: - Log

	/// Log a message of the specified level
	@inlinable static func log(_ level: TraceLevel, _ message: String) {
		// TraceLog(level.rawValue.toInt32, message)
		// FIXME: Find a way to call TraceLog
		print("[\(level)] \(message)")
	}
	
	/// Trace logging, intended for internal use only
	@inlinable static func trace(_ message: String) {
		log(.trace, message)
	}
	
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	@inlinable static func debug(_ message: String) {
		log(.debug, message)
	}
	
	/// Info logging, used for program execution info
	@inlinable static func info(_ message: String) {
		log(.info, message)
	}
	
	/// Warning logging, used on recoverable failures
	@inlinable static func warning(_ message: String) {
		log(.warning, message)
	}
	
	/// Error logging, used on unrecoverable failures
	@inlinable static func error(_ message: String) {
		log(.error, message)
	}
	
	/// Fatal logging, used to abort program
	@inlinable static func fatal(_ message: String) {
		log(.fatal, message)
	}
	
	//MARK: - Configuration

	/// Set the current threshold (minimum) log level
	@inlinable static func configure(threshold level: TraceLevel) {
		SetTraceLogLevel(level.rawValue.toInt32)
	}
	
	// TODO: Implement trace callback
	// void SetTraceLogCallback(TraceLogCallback callback);
	
}

public extension TraceLevel {
	@inlinable
	init(_ traceLogLevel: raylib.TraceLogLevel) {
		self.init(rawValue: traceLogLevel.rawValue)
	}

	/// Disables logging
	static let none = TraceLevel(LOG_NONE)

	/// Trace logging, intended for internal use only
	static let trace = TraceLevel(LOG_TRACE)

	/// Debug logging, used for internal debugging, it should be disabled on release builds
	static let debug = TraceLevel(LOG_DEBUG)

	/// Info logging, used for program execution info
	static let info = TraceLevel(LOG_INFO)

	/// Warning logging, used on recoverable failures
	static let warning = TraceLevel(LOG_WARNING)

	/// Error logging, used on unrecoverable failures
	static let error = TraceLevel(LOG_ERROR)

	/// Fatal logging, used to abort program
	static let fatal = TraceLevel(LOG_FATAL)

	/// Displays all logs
	static let all = TraceLevel(LOG_ALL)

	static func < (lhs: TraceLevel, rhs: TraceLevel) -> Bool {
		lhs.rawValue < rhs.rawValue
	}
}
