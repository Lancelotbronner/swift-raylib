//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2024-05-07.
//

import raylib

extension Shader {
	public struct AttributeLocation {
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

	public struct UniformLocation {
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

	public struct LocationsView {
		@usableFromInline let shader: Shader

		@usableFromInline init(of shader: Shader) {
			self.shader = shader
		}
	}
}

extension Shader.LocationsView {

	@usableFromInline func _attribute(_ index: ShaderLocationIndex) -> Shader.AttributeLocation {
		Shader.AttributeLocation(shader, at: index)
	}

	@inlinable public var vertexPosition: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_POSITION)
	}

	@inlinable public var vertexTexcoord01: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_TEXCOORD01)
	}

	@inlinable public var vertexTexcoord02: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_TEXCOORD02)
	}

	@inlinable public var vertexNormal: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_NORMAL)
	}

	@inlinable public var vertexTangent: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_TANGENT)
	}

	@inlinable public var vertexColor: Shader.AttributeLocation {
		_attribute(SHADER_LOC_VERTEX_COLOR)
	}

	@usableFromInline func _uniform(_ index: ShaderLocationIndex) -> Shader.UniformLocation {
		Shader.UniformLocation(shader, at: index)
	}

	/// Model View Projection matrix.
	@inlinable public var mvp: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_MVP)
	}

	/// View matrix.
	@inlinable public var view: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_VIEW)
	}

	/// Projection matrix.
	@inlinable public var projection: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_PROJECTION)
	}

	/// Model matrix.
	@inlinable public var model: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_MODEL)
	}

	/// Normal matrix.
	@inlinable public var normal: Shader.UniformLocation {
		_uniform(SHADER_LOC_MATRIX_NORMAL)
	}

	@inlinable public var cameraPosition: Shader.UniformLocation {
		_uniform(SHADER_LOC_VECTOR_VIEW)
	}

	@inlinable public var diffuseColor: Shader.UniformLocation {
		_uniform(SHADER_LOC_COLOR_DIFFUSE)
	}

	@inlinable public var specularColor: Shader.UniformLocation {
		_uniform(SHADER_LOC_COLOR_SPECULAR)
	}

	@inlinable public var ambientColor: Shader.UniformLocation {
		_uniform(SHADER_LOC_COLOR_AMBIENT)
	}

	@inlinable public var albedo: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_ALBEDO)
	}

	@inlinable public var metalness: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_METALNESS)
	}

	@inlinable public var normals: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_NORMAL)
	}

	@inlinable public var roughness: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_ROUGHNESS)
	}

	@inlinable public var occlusion: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_OCCLUSION)
	}

	@inlinable public var emission: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_EMISSION)
	}

	@inlinable public var height: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_HEIGHT)
	}

	@inlinable public var cubemap: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_CUBEMAP)
	}

	@inlinable public var irradiance: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_IRRADIANCE)
	}

	@inlinable public var prefilter: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_PREFILTER)
	}

	@inlinable public var brdf: Shader.UniformLocation {
		_uniform(SHADER_LOC_MAP_BRDF)
	}

}
