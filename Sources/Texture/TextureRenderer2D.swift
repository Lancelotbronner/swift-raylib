//
//  TextureRenderer2D.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-05.
//

import raylib

extension Renderer2D {
	
	//MARK: - Texture
	
	public static func texture(_ value: some Texture, at x: Int, _ y: Int, tint: Color = Renderer.tint) {
		DrawTexture(value.rawValue, x.toInt32, y.toInt32, tint.rawValue)
	}
	
	public static func texture(_ value: some Texture, at position: Vector2, tint: Color = Renderer.tint) {
		DrawTextureV(value.rawValue, position.rawValue, tint.rawValue)
	}

	//MARK: - Atlas
	
	public static func atlas(_ value: some Texture, from source: Rectangle, at position: Vector2, tint: Color = Renderer.tint) {
		DrawTextureRec(value.rawValue, source.rawValue, position.rawValue, tint.rawValue)
	}

	public static func atlas(_ value: some Texture, from source: Rectangle, to destination: Rectangle, origin: Vector2, rotation: Float = 0, tint: Color = Renderer.tint) {
		DrawTexturePro(value.rawValue, source.rawValue, destination.rawValue, origin.rawValue, rotation, tint.rawValue)
	}
	
	public static func atlas(_ value: some Texture, from source: Rectangle? = nil, to destination: Rectangle, rotation: Angle = .zero, tint: Color = Renderer.tint) {
		DrawTexturePro(value.rawValue, source?.rawValue ?? .init(x: 0, y: 0, width: value.size.x, height: value.size.y), destination.rawValue, .init(), rotation.degrees, tint.rawValue)
	}
	
	//MARK: - Target
	
	public static func target(_ value: RenderTexture, to destination: Rectangle, rotation: Angle = .zero, tint: Color = Renderer.tint) {
		let source = Rectangle(at: 0, 0, size: value.texture.width.toFloat, -value.texture.height.toFloat)
		DrawTexturePro(value.texture.rawValue, source.rawValue, destination.rawValue, source.size.rawValue, rotation.degrees, tint.rawValue)
	}
	
}
