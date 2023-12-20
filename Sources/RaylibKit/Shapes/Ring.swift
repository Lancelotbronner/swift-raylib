//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

public struct Ring {
	
	public var position: Vector2
	public var innerRadius: Float
	public var outerRadius: Float
	public var segments: Int?
	public var start: Angle
	public var end: Angle
	
	@inlinable public init(at position: Vector2, inner innerRadius: Float, outer outerRadius: Float, segments: Int? = nil, from start: Angle, to end: Angle) {
		self.position = position
		self.innerRadius = innerRadius
		self.outerRadius = outerRadius
		self.segments = segments
		self.start = start
		self.end = end
	}
	
	@inlinable public init(at position: Vector2, radius: Float, width: Float, segments: Int? = nil, from start: Angle, to end: Angle) {
		self.position = position
		self.innerRadius = radius - width
		self.outerRadius = radius
		self.segments = segments
		self.start = start
		self.end = end
	}

	//	@inlinable public var frame: Rectangle {
	//		// ???
	//	}

}
