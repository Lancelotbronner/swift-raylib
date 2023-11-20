//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-12.
//

import raylib

//MARK: - Image Wire Canvas

public struct WireCanvas {
	
	//MARK: Properties
	
	@usableFromInline var underlying: UnsafeMutablePointer<raylib.Image>
	
	//MARK: Initialization
	
	@usableFromInline init(to image: UnsafeMutablePointer<raylib.Image>) {
		underlying = image
	}
	
	//MARK: Rectangle Methods
	
	/// Draw rectangle lines within an image
	@inlinable public mutating func rectangle(_ shape: Rectangle, thickness: Int, color: Color) {
		ImageDrawRectangleLines(underlying, shape.toRaylib, thickness.toInt32, color.toRaylib)
	}
	
}
