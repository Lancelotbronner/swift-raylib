//
//  Mouse.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Mouse {}

public extension Mouse {

	//MARK: - Position

	@inlinable static var x: Int {
		get { GetMouseX().toInt }
		set { SetMousePosition(newValue.toInt32, GetMouseY()) }
	}

	@inlinable static var y: Int {
		get { GetMouseY().toInt }
		set { SetMousePosition(GetMouseX(), newValue.toInt32) }
	}

	@inlinable static var position: Vector2 {
		get { Vector2(rawValue: GetMousePosition()) }
		set { SetMousePosition(newValue.x.toInt32, newValue.y.toInt32) }
	}

	@inlinable static var delta: Vector2 {
		Vector2(rawValue: GetMouseDelta())
	}

	//MARK: - Buttons

	static let left = MouseButton(MOUSE_BUTTON_LEFT)
	static let right = MouseButton(MOUSE_BUTTON_RIGHT)

	static let side = MouseButton(MOUSE_BUTTON_SIDE)
	static let extra = MouseButton(MOUSE_BUTTON_EXTRA)
	static let back = MouseButton(MOUSE_BUTTON_BACK)
	static let forward = MouseButton(MOUSE_BUTTON_FORWARD)

	//MARK: - Scroll Wheel

	static let middle = MouseButton(MOUSE_BUTTON_MIDDLE)

	@inlinable static var wheel: Float {
		GetMouseWheelMove()
	}
	
	//MARK: - Configuration

	@inlinable static func offset(by value: Vector2) {
		SetMouseOffset(value.x.toInt32, value.y.toInt32)
	}
	
	@inlinable static func scale(by value: Vector2) {
		SetMouseScale(value.x, value.y)
	}
	
}
