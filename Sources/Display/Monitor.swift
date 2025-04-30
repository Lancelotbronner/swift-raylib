//
//  Monitor.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Monitor: RawRepresentable {
	public var rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}
}

public extension Monitor {

	//MARK: - Retrieval

	/// Get number of connected monitors
	@inlinable static var count: Int {
		GetMonitorCount().toInt
	}
	
	/// Get current connected monitor
	@inlinable static var current: Monitor {
		Monitor(rawValue: GetCurrentMonitor())
	}
	
	/// Get currently connected monitors
	@inlinable static var all: [Monitor] {
		(0 ..< GetMonitorCount()).lazy.map(Monitor.init)
	}

	//MARK: - Properties

	/// Get the human-readable name of the monitor
	@inlinable var name: String {
		GetMonitorName(rawValue).toString
	}
	
	/// Get monitor position
	@inlinable var position: Vector2 {
		Vector2(rawValue: GetMonitorPosition(rawValue))
	}
	
	/// Get monitor width (max available by monitor)
	@inlinable var width: Int {
		GetMonitorWidth(rawValue).toInt
	}
	
	/// Get monitor height (max available by monitor)
	@inlinable var height: Int {
		GetMonitorHeight(rawValue).toInt
	}
	
	/// Get monitor physical width in millimetres
	@inlinable var physicalWidth: Int {
		GetMonitorPhysicalWidth(rawValue).toInt
	}
	
	/// Get monitor physical height in millimetres
	@inlinable var physicalHeight: Int {
		GetMonitorPhysicalHeight(rawValue).toInt
	}
	
	/// Get specified monitor refresh rate
	@inlinable var refreshRate: Int {
		GetMonitorRefreshRate(rawValue).toInt
	}

}
