//
//  ConfigurationFlags.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-11-30.
//

import raylib

public struct ConfigurationFlags: OptionSet, Sendable {
	public let rawValue: UInt32

	public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}
}

public extension ConfigurationFlags {

	init(_ configFlags: raylib.ConfigFlags) {
		self.init(rawValue: configFlags.rawValue)
	}

	//MARK: - Configuration

	/// Check if specific window flags are enabled; Set window configuration state using flags; Clear window configuration state flags
	@inlinable var isEnabled: Bool {
		get { IsWindowState(rawValue) }
		nonmutating set { (newValue ? SetWindowState : ClearWindowState)(rawValue) }
	}

	/// Setup init view configuration flags
	@inlinable func configure() {
		SetConfigFlags(rawValue)
	}
	
	/// Set window configuration state
	@inlinable func enable() {
		SetWindowState(rawValue)
	}
	
	/// Clear window configuration state
	@inlinable func disable() {
		ClearWindowState(rawValue)
	}
	
}

public extension ConfigurationFlags {
	/// No flags
	static let none: ConfigurationFlags = []

	/// Set to run program in fullscreen
	static let fullscreen = ConfigurationFlags(FLAG_FULLSCREEN_MODE)

	/// Set to allow resizable window
	static let resizable = ConfigurationFlags(FLAG_WINDOW_RESIZABLE)

	/// Set to disable window decoration (frame and buttons)
	static let undecorated = ConfigurationFlags(FLAG_WINDOW_UNDECORATED)

	/// Set to hide window
	static let hidden = ConfigurationFlags(FLAG_WINDOW_HIDDEN)

	/// Set to minimize window (iconify)
	static let minimized = ConfigurationFlags(FLAG_WINDOW_MINIMIZED)

	/// Set to maximize window (expanded to monitor)
	static let maximized = ConfigurationFlags(FLAG_WINDOW_MAXIMIZED)

	/// Set to window non focused
	static let unfocused = ConfigurationFlags(FLAG_WINDOW_UNFOCUSED)

	/// Set to window always on top
	static let topmost = ConfigurationFlags(FLAG_WINDOW_TOPMOST)

	/// Set to allow windows running while minimized
	static let alwaysRun = ConfigurationFlags(FLAG_WINDOW_ALWAYS_RUN)

	/// Set to allow transparent framebuffer
	static let transparent = ConfigurationFlags(FLAG_WINDOW_TRANSPARENT)

	/// Set to support HighDPI
	static let highDPI = ConfigurationFlags(FLAG_WINDOW_HIGHDPI)

	/// Set to support mouse passthrough, only supported with ``WindowFlags/undecorated``
	static let mousePassthrough = ConfigurationFlags(FLAG_WINDOW_MOUSE_PASSTHROUGH);

	/// Set to try enabling V-Sync on GPU
	static let vsync = ConfigurationFlags(FLAG_VSYNC_HINT)

	/// Set to try enabling MSAA 4X
	static let msaa4x = ConfigurationFlags(FLAG_MSAA_4X_HINT)

	/// Set to try enabling interlaced video format (for V3D)
	static let interlaced = ConfigurationFlags(FLAG_INTERLACED_HINT)
}

//MARK: - Integration

extension Sequence where Element == ConfigurationFlags {
	@usableFromInline var reduced: ConfigurationFlags {
		ConfigurationFlags(self)
	}
}
