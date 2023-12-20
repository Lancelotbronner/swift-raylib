//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

public struct Camera2D: RawRepresentable {
	public var rawValue: raylib.Camera2D

	@inlinable public init(rawValue: raylib.Camera2D) {
		self.rawValue = rawValue
	}

	//MARK: - Initialization

	@inlinable public init() {
		self.init(at: .zero)
	}

	@inlinable public init(at position: Vector2, offsetBy offset: Vector2 = .zero, rotation: Float = 0, zoom: Float = 1) {
		rawValue = raylib.Camera2D(offset: position.rawValue, target: offset.rawValue, rotation: rotation, zoom: zoom)
	}

	@inlinable public static func centered(on position: Vector2, rotation: Float = 0, zoom: Float = 1) -> Camera2D {
		Camera2D(at: position, offsetBy: Window.size / 2)
	}

	//MARK: - Properties

	/// The camera's rotation
	@inlinable public var rotation: Float {
		get { rawValue.rotation }
		set { rawValue.rotation = newValue }
	}
	
	// TODO: Validate offset
	/// The camera's screen offset
	@inlinable public var offset: Vector2 {
		get { Vector2(rawValue: rawValue.offset) }
		set { rawValue.offset = newValue.rawValue }
	}
	
	/// How much the camera is zoomed in
	@inlinable public var zoom: Float {
		get { rawValue.zoom }
		set { rawValue.zoom = newValue }
	}

	//MARK: - Position

	// TODO: Validate target
	/// The point the camera is watching
	@inlinable public var target: Vector2 {
		get { Vector2(rawValue: rawValue.target) }
		set { rawValue.target = newValue.rawValue }
	}

	@inlinable public mutating func translate(by delta: Vector2) {
		let translation = delta * (-1 / rawValue.zoom)
		rawValue.target.x += translation.x
		rawValue.target.y += translation.y
	}

	//MARK: - Coordinate Conversion

	/// Get view matrix
	@inlinable public var matrix: Matrix4x4f {
		GetCameraMatrix2D(rawValue)
	}

	/// Get the screen space position for a world space position
	@inlinable public func toScreen(world position: Vector2) -> Vector2 {
		Vector2(rawValue: GetWorldToScreen2D(position.rawValue, rawValue))
	}
	
	/// Get the world space position for a screen space position
	@inlinable public func toWorld(screen position: Vector2) -> Vector2 {
		Vector2(rawValue: GetScreenToWorld2D(position.rawValue, rawValue))
	}

	//MARK: - Rendering

	/// Shortcut for ``Renderer/camera(_:draw:)-5io6x``
	@_transparent public func callAsFunction(draw: () -> Void) {
		Renderer.camera(self, draw: draw)
	}

}
