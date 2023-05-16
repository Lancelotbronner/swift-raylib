//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-25.
//

import CRaylib

//MARK: - Uniform

public protocol UniformConvertible {
	
	/// Writes a value for the specified shader at the specified index
	func write(_ value: Self, at index: Int32, to shader: Shader)
	
}

public struct Uniform<Scalar: UniformConvertible> {
	
	//MARK: Properties
	
	@usableFromInline let shader: Shader
	@usableFromInline let index: Int32
	
	//MARK: Initialization
	
	@usableFromInline init(at index: Int32, in shader: Shader) {
		self.shader = shader
		self.index = index
	}
	
	@usableFromInline init(get name: String, in shader: Shader) {
		let index = GetShaderLocation(shader.implementation.raylib, name)
		self.init(at: index, in: shader)
	}
	
	//MARK: Methods
	
	/// Writes the value to the shader's uniform
	///
	/// - Parameter value: The value to write
	@inlinable public func write(_ value: Scalar) {
		value.write(value, at: index, to: shader)
	}
	
}

//MARK: - Uniform Conformances

internal protocol BuiltinUniformInstance: UniformConvertible {
	var UNIFORM_TYPE: Int32 { get }
}

extension BuiltinUniformInstance {
	
	@inlinable public func write(_ value: Self, at index: Int32, to shader: Shader) {
		withUnsafePointer(to: value) { pointer in
			SetShaderValue(shader.implementation.raylib, index, pointer, UNIFORM_TYPE)
		}
	}
	
}

internal protocol BuiltinUniformType: BuiltinUniformInstance {
	static var UNIFORM_TYPE: Int32 { get }
}

extension BuiltinUniformType {
	
	@inlinable public var UNIFORM_TYPE: Int32 { Self.UNIFORM_TYPE }
	
}

internal protocol BuiltinUniformSequence: UniformConvertible, Collection {
	static var UNIFORM_TYPE: Int32 { get }
}

extension BuiltinUniformSequence {
	
	@inlinable public func write(_ value: Self, at index: Int32, to shader: Shader) {
		withUnsafePointer(to: value) { pointer in
			SetShaderValueV(shader.implementation.raylib, index, pointer, Self.UNIFORM_TYPE, value.count.toInt32)
		}
	}
	
}

extension Sequence where Element: BuiltinUniformType {
	
	@usableFromInline static var UNIFORM_TYPE: Int32 { Element.UNIFORM_TYPE }
	
}

internal protocol BuiltinUniformVector2 {
	static var UNIFORM_VECTOR_2_TYPE: Int32 { get }
}

extension Vector2: BuiltinUniformInstance, UniformConvertible where Scalar: BuiltinUniformVector2 {
	var UNIFORM_TYPE: Int32 { Scalar.UNIFORM_VECTOR_2_TYPE }
}

internal protocol BuiltinUniformVector3 {
	static var UNIFORM_VECTOR_3_TYPE: Int32 { get }
}

extension Vector3: BuiltinUniformInstance, UniformConvertible where Scalar: BuiltinUniformVector3 {
	var UNIFORM_TYPE: Int32 { Scalar.UNIFORM_VECTOR_3_TYPE }
}

internal protocol BuiltinUniformVector4 {
	static var UNIFORM_VECTOR_4_TYPE: Int32 { get }
}

extension Vector4: BuiltinUniformInstance, UniformConvertible where Scalar: BuiltinUniformVector4 {
	var UNIFORM_TYPE: Int32 { Scalar.UNIFORM_VECTOR_4_TYPE }
}

//MARK: - Uniform Data Types

extension Float: BuiltinUniformType, BuiltinUniformVector2, BuiltinUniformVector3, BuiltinUniformVector4 {
	
	static var UNIFORM_TYPE: Int32 { SHADER_UNIFORM_FLOAT.rawValue.toInt32 }
	static var UNIFORM_VECTOR_2_TYPE: Int32 { SHADER_UNIFORM_VEC2.rawValue.toInt32 }
	static var UNIFORM_VECTOR_3_TYPE: Int32 { SHADER_UNIFORM_VEC3.rawValue.toInt32 }
	static var UNIFORM_VECTOR_4_TYPE: Int32 { SHADER_UNIFORM_VEC4.rawValue.toInt32 }
	
}

extension Int32: BuiltinUniformType, BuiltinUniformVector2, BuiltinUniformVector3, BuiltinUniformVector4 {
	static var UNIFORM_TYPE: Int32 { SHADER_UNIFORM_INT.rawValue.toInt32 }
	static var UNIFORM_VECTOR_2_TYPE: Int32 { SHADER_UNIFORM_IVEC2.rawValue.toInt32 }
	static var UNIFORM_VECTOR_3_TYPE: Int32 { SHADER_UNIFORM_IVEC3.rawValue.toInt32 }
	static var UNIFORM_VECTOR_4_TYPE: Int32 { SHADER_UNIFORM_IVEC4.rawValue.toInt32 }
}

// TODO: Matrix & Texture uniform convertible
// void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
// void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);

//MARK: - Sequence Integrations

extension Array: BuiltinUniformSequence, UniformConvertible where Element: BuiltinUniformType { }
extension ContiguousArray: BuiltinUniformSequence, UniformConvertible where Element: BuiltinUniformType { }
extension Set: BuiltinUniformSequence, UniformConvertible where Element: BuiltinUniformType { }
