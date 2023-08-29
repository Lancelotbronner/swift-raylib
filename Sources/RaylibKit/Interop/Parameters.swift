//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2023-02-24.
//

public enum Axis {
	case horizontal
	case vertical
}

public enum Rotation {
	public static let clockwise = Rotation.right
	public static let counterClockwise = Rotation.left

	case left
	case right
}
