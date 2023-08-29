//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-03.
//

import CRaylib

public struct Screen {

	/// Load image from screen buffer and (screenshot)
	@inlinable public static func screenshot() -> Image {
		LoadImageFromScreen().toSwift
	}
	
	/// Takes a screenshot of current screen (filename extension defines format)
	@inlinable public static func screenshot(as filename: String) {
		TakeScreenshot(filename)
	}
	
}