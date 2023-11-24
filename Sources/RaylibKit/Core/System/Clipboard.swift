//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Clipboard {
	
	/// Get and set clipboard text content
	@inlinable public static var text: String {
		get { GetClipboardText().toString }
		set { SetClipboardText(newValue) }
	}
	
}
