//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Mouse {

	//MARK: - Position

	@inlinable public static var x: Int {
		get { GetMouseX().toInt }
		set { SetMousePosition(newValue.toInt32, GetMouseY()) }
	}

	@inlinable public static var y: Int {
		get { GetMouseY().toInt }
		set { SetMousePosition(GetMouseX(), newValue.toInt32) }
	}

	@inlinable public static var position: Vector2 {
		get { Vector2(rawValue: GetMousePosition()) }
		set { SetMousePosition(newValue.x.toInt32, newValue.y.toInt32) }
	}

	@inlinable public static var delta: Vector2 {
		Vector2(rawValue: GetMouseDelta())
	}

	//MARK: - Buttons

	public static let left = MouseButton(MOUSE_BUTTON_LEFT)
	public static let right = MouseButton(MOUSE_BUTTON_RIGHT)

	public static let side = MouseButton(MOUSE_BUTTON_SIDE)
	public static let extra = MouseButton(MOUSE_BUTTON_EXTRA)
	public static let back = MouseButton(MOUSE_BUTTON_BACK)
	public static let forward = MouseButton(MOUSE_BUTTON_FORWARD)

	//MARK: - Scroll Wheel

	public static let middle = MouseButton(MOUSE_BUTTON_MIDDLE)

	@inlinable public static var wheel: Float {
		GetMouseWheelMove()
	}
	
	//MARK: - Configuration

	@inlinable public static func offset(by value: Vector2) {
		SetMouseOffset(value.x.toInt32, value.y.toInt32)
	}
	
	@inlinable public static func scale(by value: Vector2) {
		SetMouseScale(value.x, value.y)
	}
	
}
