//
//  Shader+Locations.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2024-05-07.
//

import raylib

public extension Shader {
	struct AttributeLocation {
		@usableFromInline let shader: Shader
		@usableFromInline let index: ShaderLocationIndex

		@usableFromInline init(_ shader: Shader, at index: ShaderLocationIndex) {
			self.shader = shader
			self.index = index
		}

		@inlinable public var location: Int32 {
			get { shader.location(of: index) }
			nonmutating set { shader.bind(index, to: newValue) }
		}

		/// Bind this location to a named attribute
		@inlinable public func bind(_ name: String) {
			location = GetShaderLocationAttrib(shader.rawValue, name)
		}
	}

	struct UniformLocation {
		@usableFromInline let shader: Shader
		@usableFromInline let index: ShaderLocationIndex

		@usableFromInline init(_ shader: Shader, at index: ShaderLocationIndex) {
			self.shader = shader
			self.index = index
		}

		@inlinable public var location: Int32 {
			get { shader.location(of: index) }
			nonmutating set { shader.bind(index, to: newValue) }
		}

		/// Bind this location to a named uniform
		@inlinable public func bind(_ name: String) {
			location = GetShaderLocation(shader.rawValue, name)
		}
	}

	struct LocationsView {
		@usableFromInline let shader: Shader

		@usableFromInline init(of shader: Shader) {
			self.shader = shader
		}
	}
}

public extension Shader.LocationsView {

	func _attribute(_ index: ShaderLocationIndex) -> Shader.AttributeLocation {
		Shader.AttributeLocation(shader, at: index)
	}

	@inlinable var vertexPosition: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_POSITION)
	}

	@inlinable var vertexTexcoord01: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_TEXCOORD01)
	}

	@inlinable var vertexTexcoord02: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_TEXCOORD02)
	}

	@inlinable var vertexNormal: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_NORMAL)
	}

	@inlinable var vertexTangent: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_TANGENT)
	}

	@inlinable var vertexColor: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_COLOR)
	}

	func _uniform(_ index: ShaderLocationIndex) -> Shader.UniformLocation {
		Shader.UniformLocation(shader, at: index)
	}

	/// Model View Projection matrix.
	@inlinable var mvp: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_MVP)
	}

	/// View matrix.
	@inlinable var view: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_VIEW)
	}

	/// Projection matrix.
	@inlinable var projection: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_PROJECTION)
	}

	/// Model matrix.
	@inlinable var model: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_MODEL)
	}

	/// Normal matrix.
	@inlinable var normal: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_NORMAL)
	}

	@inlinable var cameraPosition: Shader.UniformLocation {
		_uniform(SHADER_LOC_VECTOR_VIEW)
	}

	@inlinable var diffuseColor: Shader.UniformLocation {
		_uniform(SHADER_LOC_COLOR_DIFFUSE)
	}

	@inlinable var specularColor: Shader.UniformLocation {
		_uniform(SHADER_LOC_COLOR_SPECULAR)
	}

	@inlinable var ambientColor: Shader.UniformLocation {
		_uniform(SHADER_LOC_COLOR_AMBIENT)
	}

	@inlinable var albedo: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_ALBEDO)
	}

	@inlinable var metalness: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_METALNESS)
	}

	@inlinable var normals: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_NORMAL)
	}

	@inlinable var roughness: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_ROUGHNESS)
	}

	@inlinable var occlusion: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_OCCLUSION)
	}

	@inlinable var emission: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_EMISSION)
	}

	@inlinable var height: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_HEIGHT)
	}

	@inlinable var cubemap: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_CUBEMAP)
	}

	@inlinable var irradiance: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_IRRADIANCE)
	}

	@inlinable var prefilter: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_PREFILTER)
	}

	@inlinable var brdf: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_BRDF)
	}

}
