//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-06.
//

//MARK: - Ellipse

public struct Ellipse {
	
	//MARK: Properties
	
	public var position: Vector2f
	public var radius: Vector2f
	
	//MARK: Computed Properties
	
	@inlinable public var frame: Rectangle {
		Rectangle(at: position - radius, size: diameter)
	}
	
	@inlinable public var diameter: Vector2f {
		radius * 2
	}
	
	//MARK: Initialization
	
	@inlinable public init(at position: Vector2f, radius: Vector2f) {
		self.position = position
		self.radius = radius
	}
	
}
