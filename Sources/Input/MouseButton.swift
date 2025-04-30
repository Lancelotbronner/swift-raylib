//
//  MouseButton.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct MouseButton: RawRepresentable, Button, Sendable {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}
}

public extension MouseButton {

	@inlinable init(_ mouseButton: raylib.MouseButton) {
		self.init(rawValue: mouseButton.rawValue.toInt32)
	}

	//MARK: - Keycode

	var keycode: Int32 { rawValue }

	//MARK: - State

	@inlinable var isPressed: Bool {
		IsMouseButtonPressed(keycode)
	}
	
	@inlinable var isDown: Bool {
		IsMouseButtonDown(keycode)
	}
	
	@inlinable var isReleased: Bool {
		IsMouseButtonReleased(keycode)
	}
	
	@inlinable var isUp: Bool {
		IsMouseButtonUp(keycode)
	}
	
}
