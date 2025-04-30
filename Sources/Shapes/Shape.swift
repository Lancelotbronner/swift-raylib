//
//  Shape.swift
//  swift-raylib  
//
//  Created by Christophe Bronner on 2023-11-24.
//

public protocol Shape: Sendable {
	var frame: Rectangle { get }
}
