//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct MouseButton: RawRepresentable, Button {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}

	@inlinable public init(_ mouseButton: raylib.MouseButton) {
		self.init(rawValue: mouseButton.rawValue.toInt32)
	}

	//MARK: - Keycode

	public var keycode: Int32 { rawValue }

	//MARK: - State

	@inlinable public var isPressed: Bool {
		IsMouseButtonPressed(keycode)
	}
	
	@inlinable public var isDown: Bool {
		IsMouseButtonDown(keycode)
	}
	
	@inlinable public var isReleased: Bool {
		IsMouseButtonReleased(keycode)
	}
	
	@inlinable public var isUp: Bool {
		IsMouseButtonUp(keycode)
	}
	
}
