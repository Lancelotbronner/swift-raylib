//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Camera 2D

public struct Camera2D {
	
	//MARK: Properties
	
	@usableFromInline var underlying: CRaylib.Camera2D
	
	//MARK: Computed Properties
	
	/// The camera's rotation
	@inlinable public var rotation: Float {
		get { underlying.rotation }
		set { underlying.rotation = newValue }
	}
	
	// TODO: Validate target
	/// The point the camera is watching
	@inlinable public var target: Vector2f {
		get { underlying.target.toSwift }
		set { underlying.target = newValue.toRaylib }
	}
	
	// TODO: Validate offset
	/// The camera's screen offset
	@inlinable public var offset: Vector2f {
		get { underlying.offset.toSwift }
		set { underlying.offset = newValue.toRaylib }
	}
	
	/// How much the camera is zoomed in
	@inlinable public var zoom: Float {
		get { underlying.zoom }
		set { underlying.zoom = newValue }
	}
	
	/// Get view matrix
	@inlinable public var matrix: Matrix4x4f {
		GetCameraMatrix2D(underlying)
	}
	
	//MARK: Initialization

	@inlinable public init(at position: Vector2f, offsetBy offset: Vector2f = .zero, rotation: Float = 0, zoom: Float = 1) {
		underlying = CRaylib.Camera2D(offset: position.toRaylib, target: offset.toRaylib, rotation: rotation, zoom: zoom)
	}

	@inlinable public init() {
		self.init(at: .zero)
	}

	@inlinable public static func centered(on position: Vector2f, rotation: Float = 0, zoom: Float = 1) -> Camera2D {
		Camera2D(at: position, offsetBy: Window.size / 2)
	}
	
	//MARK: Conversion Methods
	
	/// Get the screen space position for a world space position
	@inlinable public func toScreen(world position: Vector2f) -> Vector2f {
		GetWorldToScreen2D(position.toRaylib, underlying).toSwift
	}
	
	/// Get the world space position for a screen space position
	@inlinable public func toWorld(screen position: Vector2f) -> Vector2f {
		GetScreenToWorld2D(position.toRaylib, underlying).toSwift
	}

	//MARK: Transformation Methods

	@inlinable public mutating func translate(by delta: Vector2f) {
		let translation = delta * (-1 / underlying.zoom)
		print("translation: \(translation)")
		underlying.target.x += translation.x
		underlying.target.y += translation.y
	}
	
}
