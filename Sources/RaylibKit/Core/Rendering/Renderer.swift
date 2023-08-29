//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Renderer

public struct Renderer {
	
	//MARK: Properties
	
	/// Window background color when using ``Applet`` or ``App``
	public static var background = Color.raywhite
	
	/// Default line thickness
	public static var thickness: Float = 1
	
	/// Default color
	public static var color = Color.gray
	
	/// Default image and texture tint
	public static var tint = Color.white
	
	/// Default text size
	public static var pointSize = 20
	
	/// Default text color
	public static var textColor = Color.black
	
	/// Default text alignment
	public static var textAlignment = TextAlignment.left
	
	//MARK: Commands
	
	/// Set background color (framebuffer clear color)
	@inlinable public static func clear(to color: Color) {
		ClearBackground(color.toRaylib)
	}
	
	//MARK: Target Methods
	
	/// Setup canvas (framebuffer) to start drawing; End canvas drawing and swap buffers (double buffering)
	@inlinable public static func frame(draw: () -> Void) {
		BeginDrawing()
		draw()
		EndDrawing()
	}
	
	@inlinable public static func target(_ texture: RenderTexture, draw: () -> Void) {
		BeginTextureMode(texture.underlying)
		draw()
		EndTextureMode()
	}
	
	//MARK: Drawing Mode Methods
	
	/// Begin blending mode; End blending mode (reset to default: alpha blending)
	@inlinable public static func blend(_ mode: Blend, draw: () -> Void) {
		BeginBlendMode(mode.toRaylib.toInt32)
		draw()
		EndBlendMode()
	}
	
	/// Begin 2D mode; End 2D mode
	@inlinable public static func camera(_ camera: Camera2D, draw: () -> Void) {
		BeginMode2D(camera.underlying)
		draw()
		EndMode2D()
	}
	
	/// Begin 3D mode; End 3D mode
	@inlinable public static func camera(_ camera: Camera3D, draw: () -> Void) {
		BeginMode3D(camera.underlying)
		draw()
		EndMode3D()
	}
	
	/// BeginShaderMode; EndShaderMode
	@inlinable public static func shader(_ shader: Shader, draw: () -> Void) {
		BeginShaderMode(shader.implementation.raylib)
		draw()
		EndShaderMode()
	}
	
	//MARK: Scissor Methods
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func scissor(at x: Int, _ y: Int, size width: Int, by height: Int, draw: () -> Void) {
		BeginScissorMode(x.toInt32, y.toInt32, width.toInt32, height.toInt32)
		draw()
		EndScissorMode()
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func scissor(at position: Vector2f, size: Vector2f, draw: () -> Void) {
		scissor(at: position.x.toInt, position.y.toInt, size: size.x.toInt, by: size.y.toInt, draw: draw)
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable public static func scissor(in area: Rectangle, draw: () -> Void) {
		scissor(at: area.position, size: area.size, draw: draw)
	}
	
}
