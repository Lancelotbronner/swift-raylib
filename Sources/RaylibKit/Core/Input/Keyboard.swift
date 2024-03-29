//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

//MARK: - Keyboard

public struct Keyboard {
	
	@inlinable public static var current: KeyboardButton {
		KeyboardButton(rawValue: GetKeyPressed())
	}
	
	@inlinable public static var character: Character {
		Character(UnicodeScalar(GetCharPressed().toUInt32)!)
	}

	//MARK: - Alphabet Keys

	public static let a = KeyboardButton(KEY_A)
	public static let b = KeyboardButton(KEY_B)
	public static let c = KeyboardButton(KEY_C)
	public static let d = KeyboardButton(KEY_D)
	public static let e = KeyboardButton(KEY_E)
	public static let f = KeyboardButton(KEY_F)
	public static let g = KeyboardButton(KEY_G)
	public static let h = KeyboardButton(KEY_H)
	public static let i = KeyboardButton(KEY_I)
	public static let j = KeyboardButton(KEY_J)
	public static let k = KeyboardButton(KEY_K)
	public static let l = KeyboardButton(KEY_L)
	public static let m = KeyboardButton(KEY_M)
	public static let n = KeyboardButton(KEY_N)
	public static let o = KeyboardButton(KEY_O)
	public static let p = KeyboardButton(KEY_P)
	public static let q = KeyboardButton(KEY_Q)
	public static let r = KeyboardButton(KEY_R)
	public static let s = KeyboardButton(KEY_S)
	public static let t = KeyboardButton(KEY_T)
	public static let u = KeyboardButton(KEY_U)
	public static let v = KeyboardButton(KEY_V)
	public static let w = KeyboardButton(KEY_W)
	public static let x = KeyboardButton(KEY_X)
	public static let y = KeyboardButton(KEY_Y)
	public static let z = KeyboardButton(KEY_Z)

	//MARK: - Number Keys

	public static let zero = KeyboardButton(KEY_ZERO)
	public static let one = KeyboardButton(KEY_ONE)
	public static let two = KeyboardButton(KEY_TWO)
	public static let three = KeyboardButton(KEY_THREE)
	public static let four = KeyboardButton(KEY_FOUR)
	public static let five = KeyboardButton(KEY_FIVE)
	public static let six = KeyboardButton(KEY_SIX)
	public static let seven = KeyboardButton(KEY_SEVEN)
	public static let eight = KeyboardButton(KEY_EIGHT)
	public static let nine = KeyboardButton(KEY_NINE)

	//MARK: - Ponctuation Keys

	public static let apostrophe = KeyboardButton(KEY_APOSTROPHE)
	public static let comma = KeyboardButton(KEY_COMMA)
	public static let minus = KeyboardButton(KEY_MINUS)
	public static let period = KeyboardButton(KEY_PERIOD)
	public static let slash = KeyboardButton(KEY_SLASH)
	public static let semicolon = KeyboardButton(KEY_SEMICOLON)
	public static let equal = KeyboardButton(KEY_EQUAL)
	public static let lbracket = KeyboardButton(KEY_LEFT_BRACKET)
	public static let rbracket = KeyboardButton(KEY_RIGHT_BRACKET)
	public static let backslash = KeyboardButton(KEY_BACKSLASH)
	public static let grave = KeyboardButton(KEY_GRAVE)

	//MARK: - Function Keys

	public static let f1 = KeyboardButton(KEY_F1)
	public static let f2 = KeyboardButton(KEY_F2)
	public static let f3 = KeyboardButton(KEY_F3)
	public static let f4 = KeyboardButton(KEY_F4)
	public static let f5 = KeyboardButton(KEY_F5)
	public static let f6 = KeyboardButton(KEY_F6)
	public static let f7 = KeyboardButton(KEY_F7)
	public static let f8 = KeyboardButton(KEY_F8)
	public static let f9 = KeyboardButton(KEY_F9)
	public static let f10 = KeyboardButton(KEY_F10)
	public static let f11 = KeyboardButton(KEY_F11)
	public static let f12 = KeyboardButton(KEY_F12)

	//MARK: - Whitespace Keys

	public static let space = KeyboardButton(KEY_SPACE)
	public static let tab = KeyboardButton(KEY_TAB)
	public static let enter = KeyboardButton(KEY_ENTER)
	public static let escape = KeyboardButton(KEY_ESCAPE)
	public static let backspace = KeyboardButton(KEY_BACKSPACE)

	//MARK: - Navigation Keys

	public static let home = KeyboardButton(KEY_HOME)
	public static let end = KeyboardButton(KEY_END)
	public static let insert = KeyboardButton(KEY_INSERT)
	public static let delete = KeyboardButton(KEY_DELETE)
	public static let pageUp = KeyboardButton(KEY_PAGE_UP)
	public static let pageDown = KeyboardButton(KEY_PAGE_DOWN)

	//MARK: - Arrow Keys

	public static let left = KeyboardButton(KEY_LEFT)
	public static let right = KeyboardButton(KEY_RIGHT)
	public static let up = KeyboardButton(KEY_UP)
	public static let down = KeyboardButton(KEY_DOWN)

	//MARK: - Numpad Keys

	public static let kp0 = KeyboardButton(KEY_KP_0)
	public static let kp1 = KeyboardButton(KEY_KP_1)
	public static let kp2 = KeyboardButton(KEY_KP_2)
	public static let kp3 = KeyboardButton(KEY_KP_3)
	public static let kp4 = KeyboardButton(KEY_KP_4)
	public static let kp5 = KeyboardButton(KEY_KP_5)
	public static let kp6 = KeyboardButton(KEY_KP_6)
	public static let kp7 = KeyboardButton(KEY_KP_7)
	public static let np8 = KeyboardButton(KEY_KP_8)
	public static let kp9 = KeyboardButton(KEY_KP_9)
	public static let kpDecimal = KeyboardButton(KEY_KP_DECIMAL)
	public static let kpDivide = KeyboardButton(KEY_KP_DIVIDE)
	public static let kpMultiply = KeyboardButton(KEY_KP_MULTIPLY)
	public static let kpSubtract = KeyboardButton(KEY_KP_SUBTRACT)
	public static let kpAdd = KeyboardButton(KEY_KP_ADD)
	public static let kpEnter = KeyboardButton(KEY_KP_ENTER)
	public static let kpEqual = KeyboardButton(KEY_KP_EQUAL)

	//MARK: - Modifier Keys

	public static let shift = KeyboardMirroredButton(KEY_LEFT_SHIFT, KEY_RIGHT_SHIFT)
	public static let control = KeyboardMirroredButton(KEY_LEFT_CONTROL, KEY_RIGHT_CONTROL)
	public static let `super` = KeyboardMirroredButton(KEY_LEFT_SUPER, KEY_RIGHT_SUPER)
	public static let alt = KeyboardMirroredButton(KEY_LEFT_ALT, KEY_RIGHT_ALT)

	//MARK: - Miscellaneous Keys

	public static let capsLock = KeyboardButton(KEY_CAPS_LOCK)
	public static let numLock = KeyboardButton(KEY_NUM_LOCK)
	public static let scrollLock = KeyboardButton(KEY_SCROLL_LOCK)
	public static let printScreen = KeyboardButton(KEY_PRINT_SCREEN)
	public static let pause = KeyboardButton(KEY_PAUSE)
	
	public static let back = KeyboardButton(KEY_BACK)
	public static let menu = KeyboardButton(KEY_MENU)
	public static let keyboardMenu = KeyboardButton(KEY_KB_MENU)
	public static let volumeUp = KeyboardButton(KEY_VOLUME_UP)
	public static let volumeDown = KeyboardButton(KEY_VOLUME_DOWN)
	
}
