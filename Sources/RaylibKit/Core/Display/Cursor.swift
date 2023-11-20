//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Cursor {
	
	//MARK: - Visibility Handling

	/// Check if cursor is visible
	@inlinable public var isVisible: Bool {
		!IsCursorHidden()
	}
	
	/// Check if cursor is not visible
	@inlinable public var isHidden: Bool {
		IsCursorHidden()
	}
	
	/// Check if cursor is on the screen
	@inlinable public var isOnScreen: Bool {
		IsCursorOnScreen()
	}

	/// Shows cursor
	@inlinable public static func show() {
		ShowCursor()
	}

	/// Hides cursor
	@inlinable public static func hide() {
		HideCursor()
	}

	//MARK: Lock Handling

	/// Enables cursor (unlock cursor)
	@inlinable public static func enable() {
		EnableCursor()
	}
	
	/// Disables cursor (lock cursor)
	@inlinable public static func disable() {
		DisableCursor()
	}

	//MARK: - Style

	/// Set mouse cursor
	@inlinable public static func style(to cursor: MouseCursor) {
		SetMouseCursor(cursor.rawValue.toInt32)
	}
	
}

public struct MouseCursor: RawRepresentable {
	public let rawValue: UInt32

	public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}

	public init(_ mouseCursor: raylib.MouseCursor) {
		self.init(rawValue: mouseCursor.rawValue)
	}

	/// Default pointer shape
	public static let `default` = Self(MOUSE_CURSOR_DEFAULT)

	/// The operation-not-allowed shape
	public static let notAllowed = Self(MOUSE_CURSOR_NOT_ALLOWED)

	/// Arrow shape
	public static let arrow = Self(MOUSE_CURSOR_ARROW)

	/// Text writing cursor shape
	public static let text = Self(MOUSE_CURSOR_IBEAM)

	/// Cross shape
	public static let crosshair = Self(MOUSE_CURSOR_CROSSHAIR)

	/// Pointing hand cursor
	public static let pointingHand = Self(MOUSE_CURSOR_POINTING_HAND)

	/// The omni-directional resize/move cursor shape
	public static let resizeAll = Self(MOUSE_CURSOR_RESIZE_ALL)

	/// Vertical resize/move arrow shape
	public static let resizeNS = Self(MOUSE_CURSOR_RESIZE_NS)

	/// Horizontal resize/move arrow shape
	public static let resizeEW = Self(MOUSE_CURSOR_RESIZE_EW)

	/// The top-right to bottom-left diagonal resize/move arrow shape
	public static let resizeNESW = Self(MOUSE_CURSOR_RESIZE_NESW)

	/// Top-left to bottom-right diagonal resize/move arrow shape
	public static let resizeNWSE = Self(MOUSE_CURSOR_RESIZE_NWSE)

}

