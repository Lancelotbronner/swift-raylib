//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Monitor

public struct Monitor {
	
	//MARK: Static Computed Properties
	
	/// Get number of connected monitors
	@inlinable public static var count: Int {
		GetMonitorCount().toInt
	}
	
	/// Get current connected monitor
	@inlinable public static var current: Monitor {
		Monitor(GetCurrentMonitor())
	}
	
	/// Get currently connected monitors
	@inlinable public static var all: [Monitor] {
		(0 ..< GetMonitorCount()).lazy.map(Monitor.init)
	}
	
	//MARK: Properties
	
	@usableFromInline let id: Int32
	
	//MARK: Computed Properties
	
	/// Get the human-readable name of the monitor
	@inlinable public var name: String {
		GetMonitorName(id).toString
	}
	
	/// Get monitor position
	@inlinable public var position: Vector2f {
		GetMonitorPosition(id).toSwift
	}
	
	/// Get monitor width (max available by monitor)
	@inlinable public var width: Int {
		GetMonitorWidth(id).toInt
	}
	
	/// Get monitor height (max available by monitor)
	@inlinable public var height: Int {
		GetMonitorHeight(id).toInt
	}
	
	/// Get monitor physical width in millimetres
	@inlinable public var physicalWidth: Int {
		GetMonitorPhysicalWidth(id).toInt
	}
	
	/// Get monitor physical height in millimetres
	@inlinable public var physicalHeight: Int {
		GetMonitorPhysicalHeight(id).toInt
	}
	
	/// Get specified monitor refresh rate
	@inlinable public var refreshRate: Int {
		GetMonitorRefreshRate(id).toInt
	}
	
	//MARK: Initialization
	
	@usableFromInline init(_ id: Int32) {
		self.id = id
	}
	
}
