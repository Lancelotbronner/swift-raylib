//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Implementation of Font

@usableFromInline protocol ImplementationOfFont {
	
	var raylib: CRaylib.Font { get set }
	
}

extension ImplementationOfFont {
	
	@inlinable public var toSwift: Font {
		Font(self)
	}
	
}

//MARK: - Raylib Integration

extension CRaylib.Font: MemoryManageable {
	
	@inlinable public static func unload(instance: CRaylib.Font) {
		UnloadFont(instance)
	}
	
}

extension Unmanaged: ImplementationOfFont where Subject == CRaylib.Font { }
extension Managed: ImplementationOfFont where Subject == CRaylib.Font { }

extension Font {
	
	@inlinable public var toRaylib: CRaylib.Font {
		implementation.raylib
	}
	
}
