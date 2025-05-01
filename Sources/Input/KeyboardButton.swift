//
//  KeyboardButton.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct KeyboardButton: RawRepresentable, Button, Sendable {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}
}

public extension KeyboardButton {

	@inlinable init(_ keyboardKey: KeyboardKey) {
		self.init(rawValue: keyboardKey.rawValue.toInt32)
	}

	//MARK: - Keycode

	/// The key to specify no keys
	static let null = KeyboardButton(KEY_NULL)

	var keycode: Int32 { rawValue }

	//MARK: - State

	@inlinable var isPressed: Bool {
		IsKeyPressed(keycode)
	}

	@inlinable var isRepeated: Bool {
		IsKeyPressedRepeat(keycode)
	}

	@inlinable var isDown: Bool {
		IsKeyDown(keycode)
	}
	
	@inlinable var isReleased: Bool {
		IsKeyReleased(keycode)
	}
	
	@inlinable var isUp: Bool {
		IsKeyUp(keycode)
	}
	
}

//MARK: - Keyboard Mirrored Button

public struct KeyboardMirroredButton: Sequence, Sendable {
	public let left: KeyboardButton
	public let right: KeyboardButton

	@usableFromInline init(_ left: KeyboardKey, _ right: KeyboardKey) {
		self.left = KeyboardButton(left)
		self.right = KeyboardButton(right)
	}

	public func makeIterator() -> Array<KeyboardButton>.Iterator {
		[left, right].makeIterator()
	}
}
