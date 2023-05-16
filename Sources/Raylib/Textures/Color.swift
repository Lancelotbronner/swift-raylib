//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import CRaylib

//MARK: - Color

public struct Color {
	
	//MARK: Constants
	
	@inlinable public static var random: Color {
		.rgba(UInt32.random(in: 0 ..< 0xFFFFFF))
	}
	
	//MARK: Properties
	
	public var red: UInt8
	public var green: UInt8
	public var blue: UInt8
	public var alpha: UInt8
	
	//MARK: Computed Properties
	
	@inlinable public var value: UInt32 {
		ColorToInt(toRaylib).toUInt32
	}
	
	//MARK: Initialization
	
	@usableFromInline init(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) {
		red = r
		green = g
		blue = b
		alpha = a
	}
	
	@inlinable public static func rgba(_ value: UInt32) -> Color {
		GetColor(value).toSwift
	}
	
	@inlinable public static func rgb(_ r: UInt8, _ g: UInt8, _ b: UInt8, a: UInt8 = .max) -> Color {
		Color(r, g, b, a)
	}
	
	//MARK: Methods
	
	@inlinable public func faded(to alpha: Float) -> Color {
		Fade(toRaylib, alpha).toSwift
	}
	
	@inlinable public mutating func fade(to alpha: Float) {
		self = faded(to: alpha)
	}
	
}

//MARK: - Palette

extension Color {
	
	@inlinable public static var lightGray: Color { .rgb(200, 200, 200) }
	@inlinable public static var gray: Color { .rgb(130, 130, 130) }
	@inlinable public static var darkGray: Color { .rgb(80, 80, 80) }
	@inlinable public static var yellow: Color { .rgb(253, 249, 0) }
	@inlinable public static var gold: Color { .rgb(253, 203, 0) }
	@inlinable public static var orange: Color { .rgb(255, 161, 0) }
	@inlinable public static var pink: Color { .rgb(255, 109, 194) }
	@inlinable public static var red: Color { .rgb(230, 41, 55) }
	@inlinable public static var maroon: Color { .rgb(190, 33, 55) }
	@inlinable public static var green: Color { .rgb(0, 228, 48) }
	@inlinable public static var lime: Color { .rgb(0, 158, 47) }
	@inlinable public static var darkGreen: Color { .rgb(0, 117, 44) }
	@inlinable public static var skyBlue: Color { .rgb(102, 191, 255) }
	@inlinable public static var blue: Color { .rgb(0, 121, 241) }
	@inlinable public static var darkBlue: Color { .rgb(0, 82, 172) }
	@inlinable public static var purple: Color { .rgb(200, 122, 255) }
	@inlinable public static var violet: Color { .rgb(135, 60, 190) }
	@inlinable public static var darkPurple: Color { .rgb(112, 31, 126) }
	@inlinable public static var beige: Color { .rgb(211, 176, 131) }
	@inlinable public static var brown: Color { .rgb(127, 106, 79) }
	@inlinable public static var darkBrown: Color { .rgb(76, 63, 47) }

	@inlinable public static var white: Color { .rgb(255, 255, 255) }
	@inlinable public static var black: Color { .rgb(0, 0, 0) }
	@inlinable public static var clear: Color { .rgb(0, 0, 0) }
	@inlinable public static var magenta: Color { .rgb(255, 0, 255) }
	@inlinable public static var raywhite: Color { .rgb(245, 245, 245) }
	
}

//MARK: - Raylib Integration

extension CRaylib.Color {
	
	@inlinable public var toSwift: Color {
		Color.rgb(r, g, b, a: a)
	}
	
}

extension Color {
	
	@inlinable public var toRaylib: CRaylib.Color {
		CRaylib.Color(r: red, g: green, b: blue, a: alpha)
	}
	
}
