//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-30.
//

import CRaylib

//MARK: - Window Flags

public struct WindowFlags: OptionSet {
	
	//MARK: Constants
	
	/// No flags
	public static let none: WindowFlags = []
	
	/// Set to run program in fullscreen
	public static let fullscreen = WindowFlags(FLAG_FULLSCREEN_MODE)
	
	/// Set to allow resizable window
	public static let resizable = WindowFlags(FLAG_WINDOW_RESIZABLE)
	
	/// Set to disable window decoration (frame and buttons)
	public static let undecorated = WindowFlags(FLAG_WINDOW_UNDECORATED)
	
	/// Set to hide window
	public static let hidden = WindowFlags(FLAG_WINDOW_HIDDEN)
	
	/// Set to minimize window (iconify)
	public static let minimized = WindowFlags(FLAG_WINDOW_MINIMIZED)
	
	/// Set to maximize window (expanded to monitor)
	public static let maximized = WindowFlags(FLAG_WINDOW_MAXIMIZED)
	
	/// Set to window non focused
	public static let unfocused = WindowFlags(FLAG_WINDOW_UNFOCUSED)
	
	/// Set to window always on top
	public static let stayOnTop = WindowFlags(FLAG_WINDOW_TOPMOST)
	
	/// Set to allow windows running while minimized
	public static let runInBackground = WindowFlags(FLAG_WINDOW_ALWAYS_RUN)
	
	/// Set to allow transparent framebuffer
	public static let transparent = WindowFlags(FLAG_WINDOW_TRANSPARENT)
	
	/// Set to support HighDPI
	public static let highDPI = WindowFlags(FLAG_WINDOW_HIGHDPI)

	/// // Set to support mouse passthrough, only supported with ``WindowFlags/undecorated``
	public static let mousePassthrough = WindowFlags(FLAG_WINDOW_MOUSE_PASSTHROUGH);
	
	/// Set to try enabling V-Sync on GPU
	public static let vsync = WindowFlags(FLAG_VSYNC_HINT)
	
	/// Set to try enabling MSAA 4X
	public static let msaa4x = WindowFlags(FLAG_MSAA_4X_HINT)
	
	/// Set to try enabling interlaced video format (for V3D)
	public static let interlaced = WindowFlags(FLAG_INTERLACED_HINT)
	
	//MARK: Properties
	
	public let rawValue: UInt32
	
	//MARK: Computed Properties
	
	/// Check if specific window flags are enabled; Set window configuration state using flags; Clear window configuration state flags
	@inlinable public var isEnabled: Bool {
		get { IsWindowState(rawValue) }
		nonmutating set { (newValue ? SetWindowState : ClearWindowState)(rawValue) }
	}
	
	//MARK: Initialization
	
	public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}
	
	@usableFromInline init(_ underlying: ConfigFlags) {
		self.init(rawValue: underlying.rawValue)
	}
	
	//MARK: Methods
	
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

extension Sequence where Element == WindowFlags {
	
	@usableFromInline var reduced: WindowFlags {
		WindowFlags(self)
	}
	
}
