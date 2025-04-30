//
//  RoundedRectangle.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-07.
//

public struct RoundedRectangle: Shape {
	public var frame: Rectangle
	public var cornerRadius: Float
	public var segments: Int
	
	public init(round rectangle: Rectangle, by radius: Float, segments: Int = 0) {
		self.frame = rectangle
		self.cornerRadius = radius
		self.segments = segments
	}
}
