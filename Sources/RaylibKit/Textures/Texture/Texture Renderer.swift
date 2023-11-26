//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import raylib

extension Renderer2D {
	
	//MARK: - Texture
	
	public static func texture(_ value: some Texture, at x: Int, _ y: Int, tint: Color = Renderer.tint) {
		DrawTexture(value.rawValue, x.toInt32, y.toInt32, tint.rawValue)
	}
	
	public static func texture(_ value: some Texture, at position: Vector2f, tint: Color = Renderer.tint) {
		DrawTextureV(value.rawValue, position.toRaylib, tint.rawValue)
	}

	//MARK: - Atlas
	
	public static func atlas(_ value: some Texture, from source: Rectangle, at position: Vector2f, tint: Color = Renderer.tint) {
		DrawTextureRec(value.rawValue, source.rawValue, position.toRaylib, tint.rawValue)
	}

	public static func atlas(_ value: some Texture, from source: Rectangle, to destination: Rectangle, origin: Vector2f, rotation: Float = 0, tint: Color = Renderer.tint) {
		DrawTexturePro(value.rawValue, source.rawValue, destination.rawValue, origin.toRaylib, rotation, tint.rawValue)
	}
	
	public static func atlas(_ value: some Texture, from source: Rectangle? = nil, to destination: Rectangle, rotation: Angle<Float> = .zero, tint: Color = Renderer.tint) {
		DrawTexturePro(value.rawValue, source?.rawValue ?? .init(x: 0, y: 0, width: value.size.x, height: value.size.y), destination.rawValue, .init(), rotation.toDegrees, tint.rawValue)
	}
	
	//MARK: - Render Texture
	
	public static func target(_ value: RenderTexture, to destination: Rectangle, rotation: Angle<Float> = .zero, tint: Color = Renderer.tint) {
		let source = Rectangle(at: 0, 0, size: value.texture.width.toFloat, -value.texture.height.toFloat)
		DrawTexturePro(value.texture.rawValue, source.rawValue, destination.rawValue, source.size.toRaylib, rotation.toDegrees, tint.rawValue)
	}
	
}
