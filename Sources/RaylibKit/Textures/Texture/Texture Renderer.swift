//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-05.
//

import CRaylib

extension Renderer2D {
	
	//MARK: - Texture
	
	public static func texture(_ value: Texture, at x: Int, _ y: Int, tint: Color = Renderer.tint) {
		DrawTexture(value.toRaylib, x.toInt32, y.toInt32, tint.toRaylib)
	}
	
	public static func texture(_ value: Texture, at position: Vector2f, tint: Color = Renderer.tint) {
		DrawTextureV(value.toRaylib, position.toRaylib, tint.toRaylib)
	}

	//MARK: - Atlas
	
	public static func atlas(_ value: Texture, from source: Rectangle, at position: Vector2f, tint: Color = Renderer.tint) {
		DrawTextureRec(value.toRaylib, source.toRaylib, position.toRaylib, tint.toRaylib)
	}

	public static func atlas(_ value: Texture, from source: Rectangle, to destination: Rectangle, origin: Vector2f, rotation: Float = 0, tint: Color = Renderer.tint) {
		DrawTexturePro(value.toRaylib, source.toRaylib, destination.toRaylib, origin.toRaylib, rotation, tint.toRaylib)
	}
	
	public static func atlas(_ value: Texture, from source: Rectangle? = nil, to destination: Rectangle, rotation: Angle<Float> = .zero, tint: Color = Renderer.tint) {
		DrawTexturePro(value.toRaylib, source?.toRaylib ?? .init(x: 0, y: 0, width: value.size.x, height: value.size.y), destination.toRaylib, .init(), rotation.toDegrees, tint.toRaylib)
	}
	
	//MARK: - Render Texture
	
	public static func target(_ value: RenderTexture, to destination: Rectangle, rotation: Angle<Float> = .zero, tint: Color = Renderer.tint) {
		let source = Rectangle(at: 0, 0, size: value.texture.width.toFloat, -value.texture.height.toFloat)
		DrawTexturePro(value.texture.toRaylib, source.toRaylib, destination.toRaylib, source.size.toRaylib, rotation.toDegrees, tint.toRaylib)
	}
	
}
