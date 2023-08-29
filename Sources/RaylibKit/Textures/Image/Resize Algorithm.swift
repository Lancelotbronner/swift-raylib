//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2022-01-08.
//

//MARK: - Resize Algorithm

public enum ResizeAlgorithm {
	
	/// Bicubic scaling algorithm
	case bicubic
	
	/// Nearest-Neighbor scaling algorithm
	case nearest
	
	/// Fill
	case fill(offset: Vector2i, color: Color)
}
