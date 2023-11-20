//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Monitor: RawRepresentable {
	public var rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}

	//MARK: - Retrieval

	/// Get number of connected monitors
	@inlinable public static var count: Int {
		GetMonitorCount().toInt
	}
	
	/// Get current connected monitor
	@inlinable public static var current: Monitor {
		Monitor(rawValue: GetCurrentMonitor())
	}
	
	/// Get currently connected monitors
	@inlinable public static var all: [Monitor] {
		(0 ..< GetMonitorCount()).lazy.map(Monitor.init)
	}

	//MARK: - Properties

	/// Get the human-readable name of the monitor
	@inlinable public var name: String {
		GetMonitorName(rawValue).toString
	}
	
	/// Get monitor position
	@inlinable public var position: Vector2f {
		GetMonitorPosition(rawValue).toSwift
	}
	
	/// Get monitor width (max available by monitor)
	@inlinable public var width: Int {
		GetMonitorWidth(rawValue).toInt
	}
	
	/// Get monitor height (max available by monitor)
	@inlinable public var height: Int {
		GetMonitorHeight(rawValue).toInt
	}
	
	/// Get monitor physical width in millimetres
	@inlinable public var physicalWidth: Int {
		GetMonitorPhysicalWidth(rawValue).toInt
	}
	
	/// Get monitor physical height in millimetres
	@inlinable public var physicalHeight: Int {
		GetMonitorPhysicalHeight(rawValue).toInt
	}
	
	/// Get specified monitor refresh rate
	@inlinable public var refreshRate: Int {
		GetMonitorRefreshRate(rawValue).toInt
	}

}
