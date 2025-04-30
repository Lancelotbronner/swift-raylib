////
////  File.swift
//  swift-raylib//  File
////
////  Created by Christophe Bronner on 2021-09-07.
////
//
//import raylib
//
////MARK: - Vector 4
//
//public typealias Vector4f = Vector4<Float>
//public typealias Vector4i = Vector4<Int>
//
//public struct Vector4<Element>: VectorProtocol {
//	
//	//MARK: Properties
//	
//	public var x: Element
//	public var y: Element
//	public var z: Element
//	public var w: Element
//	
//	//MARK: Initialization
//	
//	@inlinable public init(_ x: Element, _ y: Element, _ z: Element, _ w: Element) {
//		self.x = x
//		self.y = y
//		self.z = z
//		self.w = w
//	}
//	
//	@inlinable public init(_ v: Element) {
//		self.init(v, v, v, v)
//	}
//	
//	//MARK: Utilities
//
//	@_transparent public static func transform(_ transform: (WritableKeyPath<Vector4<Element>, Element>) throws -> Void) rethrows {
//		try transform(\.x)
//		try transform(\.y)
//		try transform(\.z)
//		try transform(\.w)
//	}
//	
//	@_transparent public static func map(_ transform: (WritableKeyPath<Vector4, Element>) throws -> Element) rethrows -> Vector4 {
//		Vector4(try transform(\.x), try transform(\.y), try transform(\.z), try transform(\.w))
//	}
//	
//}
//
////MARK: - Conformances
//
//extension Vector4: Equatable where Element: Equatable { }
//extension Vector4: Hashable where Element: Hashable { }
//
////MARK: - Raylib Integration
//
//extension Vector4 where Element == Float {
//	
//	@_transparent public var toRaylib: raylib.Vector4 {
//		raylib.Vector4(x: x, y: y, z: z, w: w)
//	}
//	
//}
//
//extension raylib.Vector4 {
//	
//	@_transparent public var toSwift: Vector4f {
//		Vector4f(x, y, z, w)
//	}
//	
//}
