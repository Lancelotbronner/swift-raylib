//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Keyboard Button

public struct MouseButton: Button {
	
	//MARK: Properties
	
	public let keycode: Int32
	
	//MARK: Computed Properties
	
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
	
	//MARK: Initialization
	
	@inlinable public init(_ keycode: Int32) {
		self.keycode = keycode
	}
	
	@inlinable public init(_ key: CRaylib.MouseButton) {
		keycode = key.rawValue.toInt32
	}
	
}
