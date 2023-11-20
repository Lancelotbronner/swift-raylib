//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import raylib

public struct ConfigurationFlags: OptionSet {
	public let rawValue: UInt32

	public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}

	public init(_ configFlags: raylib.ConfigFlags) {
		self.init(rawValue: configFlags.rawValue)
	}

	/// No flags
	public static let none: ConfigurationFlags = []
	
	/// Set to run program in fullscreen
	public static let fullscreen = ConfigurationFlags(FLAG_FULLSCREEN_MODE)
	
	/// Set to allow resizable window
	public static let resizable = ConfigurationFlags(FLAG_WINDOW_RESIZABLE)
	
	/// Set to disable window decoration (frame and buttons)
	public static let undecorated = ConfigurationFlags(FLAG_WINDOW_UNDECORATED)
	
	/// Set to hide window
	public static let hidden = ConfigurationFlags(FLAG_WINDOW_HIDDEN)
	
	/// Set to minimize window (iconify)
	public static let minimized = ConfigurationFlags(FLAG_WINDOW_MINIMIZED)
	
	/// Set to maximize window (expanded to monitor)
	public static let maximized = ConfigurationFlags(FLAG_WINDOW_MAXIMIZED)
	
	/// Set to window non focused
	public static let unfocused = ConfigurationFlags(FLAG_WINDOW_UNFOCUSED)
	
	/// Set to window always on top
	public static let topmost = ConfigurationFlags(FLAG_WINDOW_TOPMOST)

	/// Set to allow windows running while minimized
	public static let alwaysRun = ConfigurationFlags(FLAG_WINDOW_ALWAYS_RUN)

	/// Set to allow transparent framebuffer
	public static let transparent = ConfigurationFlags(FLAG_WINDOW_TRANSPARENT)
	
	/// Set to support HighDPI
	public static let highDPI = ConfigurationFlags(FLAG_WINDOW_HIGHDPI)

	/// Set to support mouse passthrough, only supported with ``WindowFlags/undecorated``
	public static let mousePassthrough = ConfigurationFlags(FLAG_WINDOW_MOUSE_PASSTHROUGH);
	
	/// Set to try enabling V-Sync on GPU
	public static let vsync = ConfigurationFlags(FLAG_VSYNC_HINT)
	
	/// Set to try enabling MSAA 4X
	public static let msaa4x = ConfigurationFlags(FLAG_MSAA_4X_HINT)
	
	/// Set to try enabling interlaced video format (for V3D)
	public static let interlaced = ConfigurationFlags(FLAG_INTERLACED_HINT)

	//MARK: - Configuration

	/// Check if specific window flags are enabled; Set window configuration state using flags; Clear window configuration state flags
	@inlinable public var isEnabled: Bool {
		get { IsWindowState(rawValue) }
		nonmutating set { (newValue ? SetWindowState : ClearWindowState)(rawValue) }
	}

	/// Setup init view configuration flags
	@inlinable public func configure() {
		SetConfigFlags(rawValue)
	}
	
	/// Set window configuration state
	@inlinable public func enable() {
		SetWindowState(rawValue)
	}
	
	/// Clear window configuration state
	@inlinable public func disable() {
		ClearWindowState(rawValue)
	}
	
}

//MARK: - Integration

extension Sequence where Element == ConfigurationFlags {
	
	@usableFromInline var reduced: ConfigurationFlags {
		ConfigurationFlags(self)
	}
	
}
