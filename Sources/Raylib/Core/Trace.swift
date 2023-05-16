//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Trace

public struct Trace {
	
	//MARK: Logging Methods
	
	/// Log a message of the specified level
	@inlinable public static func log(_ level: TraceLevel, _ message: String) {
		// TraceLog(level.rawValue.toInt32, message)
		// FIXME: Find a way to call TraceLog
		print("[\(level)] \(message)")
	}
	
	/// Trace logging, intended for internal use only
	@inlinable public static func trace(_ message: String) {
		log(.trace, message)
	}
	
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	@inlinable public static func debug(_ message: String) {
		log(.debug, message)
	}
	
	/// Info logging, used for program execution info
	@inlinable public static func info(_ message: String) {
		log(.info, message)
	}
	
	/// Warning logging, used on recoverable failures
	@inlinable public static func warning(_ message: String) {
		log(.warning, message)
	}
	
	/// Error logging, used on unrecoverable failures
	@inlinable public static func error(_ message: String) {
		log(.error, message)
	}
	
	/// Fatal logging, used to abort program
	@inlinable public static func fatal(_ message: String) {
		log(.fatal, message)
	}
	
	//MARK: Configuration Methods
	
	/// Set the current threshold (minimum) log level
	@inlinable public static func configure(threshold level: TraceLevel) {
		SetTraceLogLevel(level.rawValue.toInt32)
	}
	
	// TODO: Implement trace callback
	// void SetTraceLogCallback(TraceLogCallback callback);
	
}

//MARK: - Trace Level

public struct TraceLevel: RawRepresentable, Comparable {
	
	//MARK: Constants
	
	/// Disables logging
	public static let none = TraceLevel(rawValue: LOG_NONE.rawValue)
	
	/// Trace logging, intended for internal use only
	public static let trace = TraceLevel(rawValue: LOG_TRACE.rawValue)
	
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	public static let debug = TraceLevel(rawValue: LOG_DEBUG.rawValue)
	
	/// Info logging, used for program execution info
	public static let info = TraceLevel(rawValue: LOG_INFO.rawValue)
	
	/// Warning logging, used on recoverable failures
	public static let warning = TraceLevel(rawValue: LOG_WARNING.rawValue)
	
	/// Error logging, used on unrecoverable failures
	public static let error = TraceLevel(rawValue: LOG_ERROR.rawValue)
	
	/// Fatal logging, used to abort program
	public static let fatal = TraceLevel(rawValue: LOG_FATAL.rawValue)
	
	/// Displays all logs
	public static let all = TraceLevel(rawValue: LOG_ALL.rawValue)
	
	//MARK: Properties
	
	public var rawValue: UInt32
	
	//MARK: Initialization
	
	@inlinable public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}
	
	//MARK: Operators
	
	public static func < (lhs: TraceLevel, rhs: TraceLevel) -> Bool {
		lhs.rawValue < rhs.rawValue
	}
	
	public static func > (lhs: TraceLevel, rhs: TraceLevel) -> Bool {
		lhs.rawValue > rhs.rawValue
	}
	
}
