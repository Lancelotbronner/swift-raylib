//
//  Uniform.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-11-25.
//

import raylib

public struct Uniform {
	@usableFromInline let shader: raylib.Shader
	@usableFromInline let location: Int32

	@usableFromInline init(_ shader: raylib.Shader, at location: Int32) {
		self.shader = shader
		self.location = location
	}
}

public extension Uniform {

	@inlinable func assign(_ value: Float) {
		SetShaderValue(value, at: location, as: SHADER_UNIFORM_FLOAT, on: shader)
	}

	@inlinable func assign(_ value: Vector2) {
		SetShaderValue(value, at: location, as: SHADER_UNIFORM_VEC2, on: shader)
	}

	@inlinable func assign(_ value: Vector3) {
		SetShaderValue(value, at: location, as: SHADER_UNIFORM_VEC3, on: shader)
	}

	@inlinable func assign(_ value: Vector4) {
		SetShaderValue(value, at: location, as: SHADER_UNIFORM_VEC4, on: shader)
	}

	@inlinable func assign(_ value: Int) {
		SetShaderValue(value.toInt32, at: location, as: SHADER_UNIFORM_INT, on: shader)
	}

	//TODO: Add integer vectors

	@inlinable func assign(_ value: Matrix4x4f) {
		SetShaderValueMatrix(shader, location, value)
	}

	@inlinable func assign(_ value: Texture) {
		SetShaderValueTexture(shader, location, value.rawValue)
	}

	@inlinable var float: Uniform1f {
		Uniform1f(self)
	}

	@inlinable var float2: Uniform2f {
		Uniform2f(self)
	}

	@inlinable var float3: Uniform3f {
		Uniform3f(self)
	}

	@inlinable var float4: Uniform4f {
		Uniform4f(self)
	}

	@inlinable var color: UniformColor {
		UniformColor(self)
	}

	@inlinable var matrix4x4f: UniformMatrix4x4f {
		UniformMatrix4x4f(self)
	}

	@inlinable var texture: UniformTexture {
		UniformTexture(self)
	}
}

@usableFromInline func SetShaderValue<T>(_ value: T, at index: Int32, as uniformType: ShaderUniformDataType, on shader: raylib.Shader) {
	withUnsafePointer(to: value) {
		raylib.SetShaderValue(shader, index, $0, Int32(bitPattern: uniformType.rawValue))
	}
}

@usableFromInline func SetShaderValueV<T>(_ values: [T], at index: Int32, as uniformType: ShaderUniformDataType, on shader: raylib.Shader) {
	values.withUnsafeBufferPointer {
		raylib.SetShaderValueV(shader, index, $0.baseAddress, Int32(bitPattern: uniformType.rawValue), values.count.toInt32)
	}
}

//MARK: - Specialized Uniforms

public struct Uniform1f {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Float) {
		uniform.assign(value)
	}
}

public struct Uniform2f {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Vector2) {
		uniform.assign(value)
	}
}

public struct Uniform3f {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Vector3) {
		uniform.assign(value)
	}
}

public struct Uniform4f {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Vector4) {
		uniform.assign(value)
	}
}

public struct UniformColor {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Color) {
		uniform.assign(value.toVector4f)
	}
}

public struct UniformMatrix4x4f {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Matrix4x4f) {
		uniform.assign(value)
	}
}

public struct UniformTexture {
	public let uniform: Uniform

	@usableFromInline init(_ uniform: Uniform) {
		self.uniform = uniform
	}

	@inlinable public func assign(_ value: Texture) {
		uniform.assign(value)
	}
}
