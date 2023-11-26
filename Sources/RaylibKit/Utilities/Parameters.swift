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

public enum RotationDirection {
	public static let clockwise = RotationDirection.right
	public static let counterClockwise = RotationDirection.left

	case left
	case right
}
