//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

//MARK: - Implementation of Font

@usableFromInline protocol ImplementationOfFont {
	
	var raylib: raylib.Font { get set }
	
}

extension ImplementationOfFont {
	
	@inlinable public var toSwift: Font {
		Font(self)
	}
	
}

//MARK: - Raylib Integration

extension raylib.Font: MemoryManageable {
	
	@inlinable public static func unload(instance: raylib.Font) {
		UnloadFont(instance)
	}
	
}

extension Unmanaged: ImplementationOfFont where Subject == raylib.Font { }
extension Managed: ImplementationOfFont where Subject == raylib.Font { }

extension Font {
	
	@inlinable public var toRaylib: raylib.Font {
		implementation.raylib
	}
	
}
