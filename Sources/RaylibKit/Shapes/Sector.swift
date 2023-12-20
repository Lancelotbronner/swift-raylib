//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

public struct Sector {
	
	public var position: Vector2
	public var radius: Float
	public var start: Angle<Float>
	public var end: Angle<Float>
	
	@inlinable public init(at position: Vector2, radius: Float, from start: Angle<Float>, to end: Angle<Float>) {
		self.position = position
		self.radius = radius
		self.start = start
		self.end = end
	}
	
}
