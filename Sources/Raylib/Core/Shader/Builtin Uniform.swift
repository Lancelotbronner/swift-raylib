//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-05.
//

//MARK: - Builtin Uniforms

public struct BuiltinUniform<T> {
	
	//MARK: Properties
	
	@usableFromInline let index: Int
	
	//MARK: Initialization
	
	@usableFromInline init(_ index: Int) {
		self.index = index
	}
	
}

//MARK: - Vector2f Uniforms

extension BuiltinUniform where T == Vector2f {
	
	@inlinable public static var texcoord01: BuiltinUniform { .init(1) }
	@inlinable public static var texcoord02: BuiltinUniform { .init(2) }
	
}

//MARK: - Vector3f Uniforms

extension BuiltinUniform where T == Vector3f {
	
	@inlinable public static var position: BuiltinUniform { .init(0) }
	@inlinable public static var normal: BuiltinUniform { .init(3) }
	@inlinable public static var tangeant: BuiltinUniform { .init(5) }
	
}

/*
 typedef enum {
 SHADER_LOC_MATRIX_MVP,          // Shader location: matrix uniform: model-view-projection
 SHADER_LOC_MATRIX_VIEW,         // Shader location: matrix uniform: view (camera transform)
 SHADER_LOC_MATRIX_PROJECTION,   // Shader location: matrix uniform: projection
 SHADER_LOC_MATRIX_MODEL,        // Shader location: matrix uniform: model (transform)
 SHADER_LOC_MATRIX_NORMAL,       // Shader location: matrix uniform: normal
 SHADER_LOC_VECTOR_VIEW,         // Shader location: vector uniform: view
 SHADER_LOC_COLOR_DIFFUSE,       // Shader location: vector uniform: diffuse color
 SHADER_LOC_COLOR_SPECULAR,      // Shader location: vector uniform: specular color
 SHADER_LOC_COLOR_AMBIENT,       // Shader location: vector uniform: ambient color
 SHADER_LOC_MAP_ALBEDO,          // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
 SHADER_LOC_MAP_METALNESS,       // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
 SHADER_LOC_MAP_NORMAL,          // Shader location: sampler2d texture: normal
 SHADER_LOC_MAP_ROUGHNESS,       // Shader location: sampler2d texture: roughness
 SHADER_LOC_MAP_OCCLUSION,       // Shader location: sampler2d texture: occlusion
 SHADER_LOC_MAP_EMISSION,        // Shader location: sampler2d texture: emission
 SHADER_LOC_MAP_HEIGHT,          // Shader location: sampler2d texture: height
 SHADER_LOC_MAP_CUBEMAP,         // Shader location: samplerCube texture: cubemap
 SHADER_LOC_MAP_IRRADIANCE,      // Shader location: samplerCube texture: irradiance
 SHADER_LOC_MAP_PREFILTER,       // Shader location: samplerCube texture: prefilter
 SHADER_LOC_MAP_BRDF             // Shader location: sampler2d texture: brdf
 } ShaderLocationIndex;
 
 #define SHADER_LOC_MAP_DIFFUSE      SHADER_LOC_MAP_ALBEDO
 #define SHADER_LOC_MAP_SPECULAR     SHADER_LOC_MAP_METALNESS
 
 // Shader attribute data types
 typedef enum {
 SHADER_ATTRIB_FLOAT = 0,        // Shader attribute type: float
 SHADER_ATTRIB_VEC2,             // Shader attribute type: vec2 (2 float)
 SHADER_ATTRIB_VEC3,             // Shader attribute type: vec3 (3 float)
 SHADER_ATTRIB_VEC4              // Shader attribute type: vec4 (4 float)
 } ShaderAttributeDataType;
 */

