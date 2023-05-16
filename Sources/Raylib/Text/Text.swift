//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Text

public struct Text {
	
	//MARK: Measure
	
	public static func measure(_ text: String, size: Int = Renderer.pointSize) -> Int {
		MeasureText(text, size.toInt32).toInt
	}
	
}
