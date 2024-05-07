//
//  File.swift
//
//
//  Created by Christophe Bronner on 2024-05-07.
//

import raylib

extension Shader {
	public struct UniformsView {
		@usableFromInline let shader: Shader

		@usableFromInline init(of shader: Shader) {
			self.shader = shader
		}
	}
}

extension Shader.UniformsView {

	/// Model-View-Projection
	@inlinable public var mvp: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_MVP).matrix4x4f
	}

	/// View (camera transform)
	@inlinable public var view: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_VIEW).matrix4x4f
	}

	@inlinable public var projection: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_PROJECTION).matrix4x4f
	}

	/// Model (transform)
	@inlinable public var model: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_MODEL).matrix4x4f
	}

	/// Normal matrix
	@inlinable public var normal: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_NORMAL).matrix4x4f
	}

	/// Camera position
	@inlinable public var position: Uniform3f {
		shader.uniform(SHADER_LOC_VECTOR_VIEW).float3
	}

	@inlinable public var diffuseColor: UniformColor {
		shader.uniform(SHADER_LOC_COLOR_DIFFUSE).color
	}

	@inlinable public var specularColor: UniformColor {
		shader.uniform(SHADER_LOC_COLOR_SPECULAR).color
	}

	@inlinable public var ambientColor: UniformColor {
		shader.uniform(SHADER_LOC_COLOR_AMBIENT).color
	}

	@inlinable public var albedo: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_ALBEDO).texture
	}

	@inlinable public var metalness: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_METALNESS).texture
	}

	@inlinable public var normals: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_NORMAL).texture
	}

	@inlinable public var roughness: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_ROUGHNESS).texture
	}

	@inlinable public var occlusion: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_OCCLUSION).texture
	}

	@inlinable public var emission: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_EMISSION).texture
	}

	@inlinable public var height: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_HEIGHT).texture
	}

	@inlinable public var cubemap: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_CUBEMAP).texture
	}

	@inlinable public var irradiance: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_IRRADIANCE).texture
	}

	@inlinable public var prefilter: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_PREFILTER).texture
	}

	@inlinable public var brdf: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_BRDF).texture
	}

}
