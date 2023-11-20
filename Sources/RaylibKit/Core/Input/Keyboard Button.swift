//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct KeyboardButton: RawRepresentable, Button {
	public let rawValue: Int32

	public init(rawValue: Int32) {
		self.rawValue = rawValue
	}

	@inlinable public init(_ keyboardKey: KeyboardKey) {
		self.init(rawValue: keyboardKey.rawValue.toInt32)
	}

	//MARK: - Keycode

	/// The key to specify no keys
	public static let null = KeyboardButton(KEY_NULL)

	public var keycode: Int32 { rawValue }

	//MARK: - State

	@inlinable public var isPressed: Bool {
		IsKeyPressed(keycode)
	}
	
	@inlinable public var isDown: Bool {
		IsKeyDown(keycode)
	}
	
	@inlinable public var isReleased: Bool {
		IsKeyReleased(keycode)
	}
	
	@inlinable public var isUp: Bool {
		IsKeyUp(keycode)
	}
	
}

//MARK: - Keyboard Mirrored Button

public struct KeyboardMirroredButton: Sequence {
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
