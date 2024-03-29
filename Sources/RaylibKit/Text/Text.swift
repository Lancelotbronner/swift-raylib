//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import raylib

public struct Text {
	
	@inlinable public static func measure(_ text: String, size: Float = Renderer.pointSize) -> Int {
		MeasureText(text, size.rounded().toInt32).toInt
	}

}
