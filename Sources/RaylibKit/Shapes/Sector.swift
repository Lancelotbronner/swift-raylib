//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

//MARK: - Sector

public struct Sector {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var radius: Float
	public var start: Angle<Float>
	public var end: Angle<Float>
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, radius: Float, from start: Angle<Float>, to end: Angle<Float>) {
		self.position = position
		self.radius = radius
		self.start = start
		self.end = end
	}
	
}
