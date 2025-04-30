//
//  Cursor.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Cursor {}

public struct MouseCursor: RawRepresentable, Sendable {
	public let rawValue: UInt32

	public init(rawValue: UInt32) {
		self.rawValue = rawValue
	}
}

public extension Cursor {

	//MARK: - Visibility Handling

	/// Check if cursor is visible
	@inlinable var isVisible: Bool {
		!IsCursorHidden()
	}
	
	/// Check if cursor is not visible
	@inlinable var isHidden: Bool {
		IsCursorHidden()
	}
	
	/// Check if cursor is on the screen
	@inlinable var isOnScreen: Bool {
		IsCursorOnScreen()
	}

	/// Shows cursor
	@inlinable static func show() {
		ShowCursor()
	}

	/// Hides cursor
	@inlinable static func hide() {
		HideCursor()
	}

	//MARK: Lock Handling

	/// Enables cursor (unlock cursor)
	@inlinable static func enable() {
		EnableCursor()
	}
	
	/// Disables cursor (lock cursor)
	@inlinable static func disable() {
		DisableCursor()
	}

	//MARK: - Style

	/// Set mouse cursor
	@inlinable static func style(to cursor: MouseCursor) {
		SetMouseCursor(cursor.rawValue.toInt32)
	}
	
}

public extension MouseCursor {

	init(_ mouseCursor: raylib.MouseCursor) {
		self.init(rawValue: mouseCursor.rawValue)
	}

	/// Default pointer shape
	static let `default` = Self(MOUSE_CURSOR_DEFAULT)

	/// The operation-not-allowed shape
	static let notAllowed = Self(MOUSE_CURSOR_NOT_ALLOWED)

	/// Arrow shape
	static let arrow = Self(MOUSE_CURSOR_ARROW)

	/// Text writing cursor shape
	static let text = Self(MOUSE_CURSOR_IBEAM)

	/// Cross shape
	static let crosshair = Self(MOUSE_CURSOR_CROSSHAIR)

	/// Pointing hand cursor
	static let pointingHand = Self(MOUSE_CURSOR_POINTING_HAND)

	/// The omni-directional resize/move cursor shape
	static let resizeAll = Self(MOUSE_CURSOR_RESIZE_ALL)

	/// Vertical resize/move arrow shape
	static let resizeNS = Self(MOUSE_CURSOR_RESIZE_NS)

	/// Horizontal resize/move arrow shape
	static let resizeEW = Self(MOUSE_CURSOR_RESIZE_EW)

	/// The top-right to bottom-left diagonal resize/move arrow shape
	static let resizeNESW = Self(MOUSE_CURSOR_RESIZE_NESW)

	/// Top-left to bottom-right diagonal resize/move arrow shape
	static let resizeNWSE = Self(MOUSE_CURSOR_RESIZE_NWSE)
}
