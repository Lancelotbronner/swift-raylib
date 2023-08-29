//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Cursor

public struct Cursor {
	
	//MARK: Properties
	
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
	
	//MARK: Methods
	
	/// Shows cursor
	@inlinable public static func show() {
		ShowCursor()
	}
	
	/// Hides cursor
	@inlinable public static func hide() {
		HideCursor()
	}
	
	/// Enables cursor (unlock cursor)
	@inlinable public static func enable() {
		EnableCursor()
	}
	
	/// Disables cursor (lock cursor)
	@inlinable public static func disable() {
		DisableCursor()
	}
	
	/// Set mouse cursor
	@inlinable public static func style(to cursor: MouseCursor) {
		SetMouseCursor(cursor.toRaylib.toInt32)
	}
	
}

//MARK: - Mouse Cursor

public enum MouseCursor: UInt32 {
	
	//MARK: Cases
	
	/// Default pointer shape
	case `default`
	
	/// The operation-not-allowed shape
	case forbidden
	
	/// Arrow shape
	case arrow
	
	/// Text writing cursor shape
	case text
	
	/// Cross shape
	case crosshair
	
	/// Pointing hand cursor
	case pointingHand
	
	/// The omni-directional resize/move cursor shape
	case resize
	
	/// Vertical resize/move arrow shape
	case resizeNS
	
	/// Horizontal resize/move arrow shape
	case resizeEW
	
	/// The top-right to bottom-left diagonal resize/move arrow shape
	case resizeNESW
	
	/// Top-left to bottom-right diagonal resize/move arrow shape
	case resizeNWSE
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: UInt32 {
		switch self {
		case .default: return MOUSE_CURSOR_DEFAULT.rawValue
		case .forbidden: return MOUSE_CURSOR_NOT_ALLOWED.rawValue
		case .arrow: return MOUSE_CURSOR_ARROW.rawValue
		case .text: return MOUSE_CURSOR_IBEAM.rawValue
		case .crosshair: return MOUSE_CURSOR_CROSSHAIR.rawValue
		case .pointingHand: return MOUSE_CURSOR_POINTING_HAND.rawValue
		case .resize: return MOUSE_CURSOR_RESIZE_ALL.rawValue
		case .resizeNS: return MOUSE_CURSOR_RESIZE_NS.rawValue
		case .resizeEW: return MOUSE_CURSOR_RESIZE_EW.rawValue
		case .resizeNESW: return MOUSE_CURSOR_RESIZE_NESW.rawValue
		case .resizeNWSE: return MOUSE_CURSOR_RESIZE_NWSE.rawValue
		}
	}
	
}

