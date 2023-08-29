//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Shader

public struct Shader {
	
	//MARK: Properties
	
	@usableFromInline var implementation: ImplementationOfShader
	
	//MARK: Computed Properties
	
	
	//MARK: Initialization
	
	@usableFromInline init(_ implementation: ImplementationOfShader) {
		self.implementation = implementation
	}
	
	/// Load shader from files and bind default locations
	///
	/// - Parameters:
	///   - vertex: The filename of the vertex shader
	///   - fragment: The filename of the fragment shader
	public init(path vertex: File, _ fragment: File) {
		implementation = LoadShader(vertex.path.underlying, fragment.path.underlying).toManaged
	}
	
	/// Load shader from strings and bind default locations
	/// - Parameters:
	///   - vertex: The code for the vertex shader
	///   - fragment: The code for the fragment shader
	public init(memory vertex: String, _ fragment: String) {
		implementation = LoadShaderFromMemory(vertex, fragment).toManaged
	}
	
	//MARK: Methods
	
	/// Get uniform
	@inlinable public func uniform<T>(_ name: String, of type: T.Type = T.self) -> Uniform<T> {
		Uniform(get: name, in: self)
	}
	
	/// Bind builtin uniform to a shader variable
	@inlinable public func bind<T>(_ builtin: BuiltinUniform<T>, to variable: String) -> Uniform<T> {
		let tmp = uniform(variable, of: T.self)
		implementation.raylib.locs[builtin.index] = tmp.index
		return tmp
	}
	
	// TODO: Make attribute wrapper
	
	/// Get attributes location
	@inlinable public func attribute(_ name: String) -> Int {
		GetShaderLocationAttrib(implementation.raylib, name).toInt
	}
	
}
