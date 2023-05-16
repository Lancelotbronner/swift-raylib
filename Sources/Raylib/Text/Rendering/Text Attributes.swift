//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-10.
//

import CRaylib

//MARK: - Text Alignment

public enum TextAlignment {
	case left
	case center
	case right
	
	@usableFromInline func offset(of text: String, at size: Int) -> Int {
		switch self {
		case .left: return 0
		case .center: return Text.measure(text, size: size) / 2
		case .right: return -Text.measure(text, size: size)
		}
	}
}
