//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Keyboard Button

public struct KeyboardButton: Button {
	
	//MARK: Constants
	
	/// The key to specify no keys
	public static let null = KeyboardButton(KEY_NULL)
	
	//MARK: Properties
	
	public let keycode: Int32
	
	//MARK: Computed Properties
	
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
	
	//MARK: Initialization
	
	@usableFromInline init(_ keycode: Int32) {
		self.keycode = keycode
	}
	
	@inlinable public init(_ key: KeyboardKey) {
		self.init(key.rawValue.toInt32)
	}
	
}

//MARK: - Keyboard Mirrored Button

public struct KeyboardMirroredButton: Sequence {
	
	//MARK: Properties
	
	public let left: KeyboardButton
	public let right: KeyboardButton
	
	//MARK: Methods
	
	public func makeIterator() -> Array<KeyboardButton>.Iterator {
		[left, right].makeIterator()
	}
	
	//MARK: Initialization
	
	@inlinable public init(_ left: KeyboardKey, _ right: KeyboardKey) {
		self.left = KeyboardButton(left)
		self.right = KeyboardButton(right)
	}
	
}
