//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib


//MARK: - System

public struct System {
	
	/// Open URL with default system browser (if available)
	@inlinable public static func open(_ url: String) {
		OpenURL(url)
	}
	
}

//MARK: - Foundation Integration

#if canImport(Foundation)
import Foundation

extension System {
	
	/// Open URL with default system browser (if available)
	@inlinable public static func open(_ url: URL) {
		OpenURL(url.absoluteString)
	}
	
}
#endif
