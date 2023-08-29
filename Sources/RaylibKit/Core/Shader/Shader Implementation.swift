//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-08.
//

import CRaylib

//MARK: - Implementation of Shader

@usableFromInline protocol ImplementationOfShader {
	
	var raylib: CRaylib.Shader { get set }
	
}

extension ImplementationOfShader {
	
	@inlinable public var toSwift: Shader {
		Shader(self)
	}
	
}

//MARK: - Raylib Integration

extension CRaylib.Shader: MemoryManageable {
	
	@inlinable public static func unload(instance: CRaylib.Shader) {
		UnloadShader(instance)
	}
	
}

extension Unmanaged: ImplementationOfShader where Subject == CRaylib.Shader { }
extension Managed: ImplementationOfShader where Subject == CRaylib.Shader { }

extension Shader {
	
	@inlinable public var toRaylib: CRaylib.Shader {
		implementation.raylib
	}
	
}
