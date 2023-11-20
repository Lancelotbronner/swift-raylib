//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-08.
//

import raylib

//MARK: - Implementation of Shader

@usableFromInline protocol ImplementationOfShader {
	
	var raylib: raylib.Shader { get set }
	
}

extension ImplementationOfShader {
	
	@inlinable public var toSwift: Shader {
		Shader(self)
	}
	
}

//MARK: - Raylib Integration

extension raylib.Shader: MemoryManageable {
	
	@inlinable public static func unload(instance: raylib.Shader) {
		UnloadShader(instance)
	}
	
}

extension Unmanaged: ImplementationOfShader where Subject == raylib.Shader { }
extension Managed: ImplementationOfShader where Subject == raylib.Shader { }

extension Shader {
	
	@inlinable public var toRaylib: raylib.Shader {
		implementation.raylib
	}
	
}
