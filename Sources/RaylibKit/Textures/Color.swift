//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import raylib

public struct Color: RawRepresentable {
	public var rawValue: raylib.Color

	public init(rawValue: raylib.Color) {
		self.rawValue = rawValue
	}

	//MARK: - Initialization

	@inlinable public static func rgba(_ value: UInt32) -> Color {
		self.init(rawValue: GetColor(value))
	}

	@inlinable public static func rgb(_ r: UInt8, _ g: UInt8, _ b: UInt8, a: UInt8 = .max) -> Color {
		self.init(rawValue: raylib.Color(r: r, g: g, b: b, a: a))
	}

	@inlinable public static var random: Color {
		.rgba(UInt32.random(in: 0 ..< 0xFFFFFF))
	}
	
	//MARK: - Properties

	@inlinable public var value: UInt32 {
		ColorToInt(rawValue).toUInt32
	}

	@inlinable public var toVector4f: Vector4 {
		Vector4(x: rawValue.r.toFloat, y: rawValue.g.toFloat, z: rawValue.b.toFloat, w: rawValue.a.toFloat)
	}

	@inlinable public var r: UInt8 {
		get { rawValue.r }
		set { rawValue.g = newValue }
	}

	@inlinable public var g: UInt8 {
		get { rawValue.g }
		set { rawValue.g = newValue }
	}

	@inlinable public var b: UInt8 {
		get { rawValue.b }
		set { rawValue.b = newValue }
	}

	@inlinable public var a: UInt8 {
		get { rawValue.a }
		set { rawValue.a = newValue }
	}
	
	//MARK: - Fade

	@inlinable public func faded(to alpha: Float) -> Color {
		Color(rawValue: Fade(rawValue, alpha))
	}
	
	@inlinable public mutating func fade(to alpha: Float) {
		self = faded(to: alpha)
	}
	
}

//MARK: - Color Palette

extension Color {
	
	public static let lightGray = Color.rgb(200, 200, 200)
	public static let gray = Color.rgb(130, 130, 130)
	public static let darkGray = Color.rgb(80, 80, 80)
	public static let yellow = Color.rgb(253, 249, 0)
	public static let gold = Color.rgb(253, 203, 0)
	public static let orange = Color.rgb(255, 161, 0)
	public static let pink = Color.rgb(255, 109, 194)
	public static let red = Color.rgb(230, 41, 55)
	public static let maroon = Color.rgb(190, 33, 55)
	public static let green = Color.rgb(0, 228, 48)
	public static let lime = Color.rgb(0, 158, 47)
	public static let darkGreen = Color.rgb(0, 117, 44)
	public static let skyBlue = Color.rgb(102, 191, 255)
	public static let blue = Color.rgb(0, 121, 241)
	public static let darkBlue = Color.rgb(0, 82, 172)
	public static let purple = Color.rgb(200, 122, 255)
	public static let violet = Color.rgb(135, 60, 190)
	public static let darkPurple = Color.rgb(112, 31, 126)
	public static let beige = Color.rgb(211, 176, 131)
	public static let brown = Color.rgb(127, 106, 79)
	public static let darkBrown = Color.rgb(76, 63, 47)

	public static let white = Color.rgb(255, 255, 255)
	public static let black = Color.rgb(0, 0, 0)
	public static let clear = Color.rgb(0, 0, 0)
	public static let magenta = Color.rgb(255, 0, 255)
	public static let raywhite = Color.rgb(245, 245, 245)
	
}
