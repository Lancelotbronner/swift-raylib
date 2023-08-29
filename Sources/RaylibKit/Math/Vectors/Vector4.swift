//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-07.
//

import CRaylib

//MARK: - Vector 4

public typealias Vector4f = Vector4<Float>
public typealias Vector4i = Vector4<Int>

public struct Vector4<Scalar>: Vector {
	
	//MARK: Properties
	
	public var x: Scalar
	public var y: Scalar
	public var z: Scalar
	public var w: Scalar
	
	//MARK: Initialization
	
	@inlinable public init(_ x: Scalar, _ y: Scalar, _ z: Scalar, _ w: Scalar) {
		self.x = x
		self.y = y
		self.z = z
		self.w = w
	}
	
	@inlinable public init(_ v: Scalar) {
		self.init(v, v, v, v)
	}
	
	//MARK: Utilities

	@_transparent public static func transform(_ transform: (WritableKeyPath<Vector4<Scalar>, Scalar>) throws -> Void) rethrows {
		try transform(\.x)
		try transform(\.y)
		try transform(\.z)
		try transform(\.w)
	}
	
	@_transparent public static func map(_ transform: (WritableKeyPath<Vector4, Scalar>) throws -> Scalar) rethrows -> Vector4 {
		Vector4(try transform(\.x), try transform(\.y), try transform(\.z), try transform(\.w))
	}
	
}

//MARK: - Conformances

extension Vector4: Equatable where Scalar: Equatable { }
extension Vector4: Hashable where Scalar: Hashable { }

//MARK: - Raylib Integration

extension Vector4 where Scalar == Float {
	
	@_transparent public var toRaylib: CRaylib.Vector4 {
		CRaylib.Vector4(x: x, y: y, z: z, w: w)
	}
	
}

extension CRaylib.Vector4 {
	
	@_transparent public var toSwift: Vector4f {
		Vector4f(x, y, z, w)
	}
	
}
