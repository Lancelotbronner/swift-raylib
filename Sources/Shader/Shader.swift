//
//  Shader.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import raylib

public final class Shader: RawRepresentable {
	public let rawValue: raylib.Shader

	@inlinable
	public init(rawValue: raylib.Shader) {
		self.rawValue = rawValue
	}

	deinit {
		UnloadShader(rawValue)
	}
}

public extension Shader {

	//MARK: - Loading

	/// Load shader from files and bind default locations
	///
	/// - Parameters:
	///   - vertex: The path of the vertex shader
	///   - fragment: The path of the fragment shader
	convenience init(at vertex: File, _ fragment: File) {
		self.init(rawValue: LoadShader(vertex.rawValue, fragment.rawValue))
	}

	/// Load shader from strings and bind default locations
	/// - Parameters:
	///   - vertex: The code for the vertex shader
	///   - fragment: The code for the fragment shader
	convenience init(memory vertex: String, _ fragment: String) {
		self.init(rawValue: LoadShaderFromMemory(vertex, fragment))
	}

	//MARK: - Properties

	@inlinable var isReady: Bool {
		IsShaderValid(rawValue)
	}

	@inlinable var locations: LocationsView {
		LocationsView(of: self)
	}

	@inlinable var uniforms: UniformsView {
		UniformsView(of: self)
	}

	//MARK: - Locations

	/// Get attributes location
	@inlinable func location(attribute name: String) -> Int32 {
		GetShaderLocationAttrib(rawValue, name)
	}

	/// Get uniform location
	@inlinable func location(uniform name: String) -> Int32 {
		GetShaderLocation(rawValue, name)
	}

	/// Get builtin uniform location
	@inlinable func location(of index: ShaderLocationIndex) -> Int32 {
		rawValue.locs[index.rawValue.toInt]
	}

	@inlinable func bind(_ index: ShaderLocationIndex, to location: Int32) {
		rawValue.locs[index.rawValue.toInt] = location
	}

	/// Get uniform
	@inlinable func uniform(_ name: String) -> Uniform {
		Uniform(rawValue, at: location(uniform: name))
	}

	/// Get builtin uniform
	@inlinable func uniform(_ index: ShaderLocationIndex) -> Uniform {
		Uniform(rawValue, at: location(of: index))
	}

	//MARK: - Rendering

	/// Shortcut for ``Renderer/shader(_:draw:)``
	@inlinable final func callAsFunction(draw: () -> Void) {
		Renderer.shader(self, draw: draw)
	}

}
