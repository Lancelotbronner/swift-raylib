//
//  Screen.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2022-01-03.
//

import raylib

public struct Screen {}

public extension Screen {

	//MARK: - Screenshots

	/// Load image from screen buffer and (screenshot)
	@inlinable static func screenshot() -> Image {
		Image(rawValue: LoadImageFromScreen())
	}
	
	/// Takes a screenshot of current screen (filename extension defines format)
	@inlinable static func screenshot(as filename: String) {
		TakeScreenshot(filename)
	}
	
}
