//
//  Renderer.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-01.
//

import raylib

public struct Renderer {}

public struct Renderer2D {}
public struct WireRenderer2D {}

public struct Renderer3D {}
public struct WireRenderer3D {}

public extension Renderer {

	//MARK: - Context Properties
	
	/// Default line thickness
	nonisolated(unsafe) static var thickness: Float = 1
	
	/// Default color
	nonisolated(unsafe) static var color = Color.gray
	
	/// Default image and texture tint
	nonisolated(unsafe) static var tint = Color.white
	
	/// Default text size
	nonisolated(unsafe) static var pointSize: Float = 20
	
	/// Default text color
	nonisolated(unsafe) static var textColor = Color.black
	
	/// Default text alignment
	nonisolated(unsafe) static var textAlignment = TextAlignment.left
	
	//MARK: - Background

	/// Window background color when using ``Applet`` or ``App``
	nonisolated(unsafe) static var background = Color.raywhite

	/// Set background color (framebuffer clear color)
	@inlinable static func clear(to color: Color) {
		ClearBackground(color.rawValue)
	}

	/// Clears using the color set in``background``
	@inlinable static func clear() {
		clear(to: background)
	}

	//MARK: - Targets

	/// Setup canvas (framebuffer) to start drawing; End canvas drawing and swap buffers (double buffering)
	@inlinable static func frame(draw: () -> Void) {
		BeginDrawing()
		draw()
		EndDrawing()
	}
	
	/// Draw to render texture
	@inlinable static func target(_ texture: RenderTexture, draw: () -> Void) {
		BeginTextureMode(texture.rawValue)
		draw()
		EndTextureMode()
	}
	
	//MARK: - Drawing Modes

	/// Begin blending mode; End blending mode (reset to default: alpha blending)
	@inlinable static func blend(_ mode: BlendMode, draw: () -> Void) {
		BeginBlendMode(mode.rawValue.toInt32)
		draw()
		EndBlendMode()
	}
	
	/// Begin 2D mode; End 2D mode
	@inlinable static func camera(_ camera: Camera2D, draw: () -> Void) {
		BeginMode2D(camera.rawValue)
		draw()
		EndMode2D()
	}
	
	/// Begin 3D mode; End 3D mode
	@inlinable static func camera(_ camera: Camera3D, draw: () -> Void) {
		BeginMode3D(camera.rawValue)
		draw()
		EndMode3D()
	}
	
	/// BeginShaderMode; EndShaderMode
	@inlinable static func shader(_ shader: Shader, draw: () -> Void) {
		BeginShaderMode(shader.rawValue)
		draw()
		EndShaderMode()
	}
	
	//MARK: - Scissoring
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable static func scissor(at x: Int, _ y: Int, size width: Int, by height: Int, draw: () -> Void) {
		BeginScissorMode(x.toInt32, y.toInt32, width.toInt32, height.toInt32)
		draw()
		EndScissorMode()
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable static func scissor(at position: Vector2, size: Vector2, draw: () -> Void) {
		scissor(at: position.x.toInt, position.y.toInt, size: size.x.toInt, by: size.y.toInt, draw: draw)
	}
	
	/// Begin scissor mode (define screen area for following drawing); End scissor mode
	@inlinable static func scissor(in area: Rectangle, draw: () -> Void) {
		scissor(at: area.position, size: area.size, draw: draw)
	}
	
}
