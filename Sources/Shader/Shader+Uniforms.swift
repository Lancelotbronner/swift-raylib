//
//  Shader+Uniforms.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2024-05-07.
//

import raylib

public extension Shader {
	struct UniformsView {
		@usableFromInline let shader: Shader

		@usableFromInline init(of shader: Shader) {
			self.shader = shader
		}
	}
}

public extension Shader.UniformsView {

	/// Model-View-Projection
	@inlinable var mvp: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_MVP).matrix4x4f
	}

	/// View (camera transform)
	@inlinable var view: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_VIEW).matrix4x4f
	}

	@inlinable var projection: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_PROJECTION).matrix4x4f
	}

	/// Model (transform)
	@inlinable var model: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_MODEL).matrix4x4f
	}

	/// Normal matrix
	@inlinable var normal: UniformMatrix4x4f {
		shader.uniform(SHADER_LOC_MATRIX_NORMAL).matrix4x4f
	}

	/// Camera position
	@inlinable var position: Uniform3f {
		shader.uniform(SHADER_LOC_VECTOR_VIEW).float3
	}

	@inlinable var diffuseColor: UniformColor {
		shader.uniform(SHADER_LOC_COLOR_DIFFUSE).color
	}

	@inlinable var specularColor: UniformColor {
		shader.uniform(SHADER_LOC_COLOR_SPECULAR).color
	}

	@inlinable var ambientColor: UniformColor {
		shader.uniform(SHADER_LOC_COLOR_AMBIENT).color
	}

	@inlinable var albedo: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_ALBEDO).texture
	}

	@inlinable var metalness: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_METALNESS).texture
	}

	@inlinable var normals: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_NORMAL).texture
	}

	@inlinable var roughness: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_ROUGHNESS).texture
	}

	@inlinable var occlusion: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_OCCLUSION).texture
	}

	@inlinable var emission: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_EMISSION).texture
	}

	@inlinable var height: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_HEIGHT).texture
	}

	@inlinable var cubemap: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_CUBEMAP).texture
	}

	@inlinable var irradiance: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_IRRADIANCE).texture
	}

	@inlinable var prefilter: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_PREFILTER).texture
	}

	@inlinable var brdf: UniformTexture {
		shader.uniform(SHADER_LOC_MAP_BRDF).texture
	}

}
