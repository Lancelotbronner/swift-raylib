//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Clipboard

public struct Clipboard {
	
	//MARK: Properties
	
	/// Get and set clipboard text content
	@inlinable public static var text: String {
		get { GetClipboardText().toString }
		set { SetClipboardText(newValue) }
	}
	
}
