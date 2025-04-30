//
//  Camera3D.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Camera3D: RawRepresentable {
	public var rawValue: raylib.Camera3D

	@inlinable public init(rawValue: raylib.Camera3D) {
		self.rawValue = rawValue
	}
}

public extension Camera3D {

//	@inlinable public init(at position: Vector2, offsetBy offset: Vector2 = Window.size / 2, rotation: Float = 0, zoom: Float = 1) {
//		underlying = .init
//	}
	
	// TODO: Ray hit
	// Ray GetMouseRay(Vector2 mousePosition, Camera3D camera);

	//MARK: - Coordinate Conversion

	/// Get view matrix
	@inlinable var matrix: Matrix4x4f {
		GetCameraMatrix(rawValue)
	}

	/// Get the screen space position for a world space position
	@inlinable func toScreen(world position: Vector3) -> Vector2 {
		Vector2(rawValue: GetWorldToScreen(position.rawValue, rawValue))
	}

	/// Get the screen space position for a world space position
	@inlinable func toScreen(world position: Vector3, size width: Int, by height: Int) -> Vector2 {
		Vector2(rawValue: GetWorldToScreenEx(position.rawValue, rawValue, width.toInt32, height.toInt32))
	}

	//MARK: - Rendering

	/// Shortcut for ``Renderer/camera(_:draw:)-32j6m``
	@_transparent func callAsFunction(draw: () -> Void) {
		Renderer.camera(self, draw: draw)
	}

}
