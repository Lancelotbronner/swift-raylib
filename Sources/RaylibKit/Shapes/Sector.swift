//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

public struct Sector {
	
	public var position: Vector2
	public var radius: Float
	public var start: Angle
	public var end: Angle
	
	@inlinable public init(at position: Vector2, radius: Float, from start: Angle, to end: Angle) {
		self.position = position
		self.radius = radius
		self.start = start
		self.end = end
	}
	
}
