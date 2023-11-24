//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

#warning("Shader API to review")

//MARK: - Shader

public final class Shader: RawRepresentable {
	public var rawValue: raylib.Shader

	public init(rawValue: raylib.Shader) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadShader(rawValue)
	}

	//MARK: - Loading

	/// Load shader from files and bind default locations
	///
	/// - Parameters:
	///   - vertex: The filename of the vertex shader
	///   - fragment: The filename of the fragment shader
	public convenience init(path vertex: File, _ fragment: File) {
		self.init(rawValue: LoadShader(vertex.rawValue, fragment.rawValue))
	}

	/// Load shader from strings and bind default locations
	/// - Parameters:
	///   - vertex: The code for the vertex shader
	///   - fragment: The code for the fragment shader
	public convenience init(memory vertex: String, _ fragment: String) {
		self.init(rawValue: LoadShaderFromMemory(vertex, fragment))
	}

	//MARK: - Uniforms

//	/// Get uniform
//	@inlinable public func uniform<T>(_ name: String, of type: T.Type = T.self) -> Uniform<T> {
//		return Uniform(at: GetShaderLocation(rawValue, name), in: self)
//	}
//	
//	/// Bind builtin uniform to a shader variable
//	@inlinable public func bind<T>(_ builtin: BuiltinUniform<T>, to variable: String) -> Uniform<T> {
//		let tmp = uniform(variable, of: T.self)
//		rawValue.locs[builtin.index] = tmp.index
//		return tmp
//	}
	
	// TODO: Make attribute wrapper
	
	/// Get attributes location
	@inlinable public func attribute(_ name: String) -> Int {
		GetShaderLocationAttrib(rawValue, name).toInt
	}

	//MARK: - Rendering

	/// Shortcut for ``Renderer/shader(_:draw:)``
	@inlinable public final func callAsFunction(draw: () -> Void) {
		Renderer.shader(self, draw: draw)
	}

}
