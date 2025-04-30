//
//  Keyboard.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-02.
//

import raylib

//MARK: - Keyboard

public struct Keyboard {}

public extension Keyboard {

	@inlinable static var current: KeyboardButton {
		KeyboardButton(rawValue: GetKeyPressed())
	}

	@inlinable static var character: Character {
		Character(UnicodeScalar(GetCharPressed().toUInt32)!)
	}

	//MARK: - Alphabet Keys

	static let a = KeyboardButton(KEY_A)
	static let b = KeyboardButton(KEY_B)
	static let c = KeyboardButton(KEY_C)
	static let d = KeyboardButton(KEY_D)
	static let e = KeyboardButton(KEY_E)
	static let f = KeyboardButton(KEY_F)
	static let g = KeyboardButton(KEY_G)
	static let h = KeyboardButton(KEY_H)
	static let i = KeyboardButton(KEY_I)
	static let j = KeyboardButton(KEY_J)
	static let k = KeyboardButton(KEY_K)
	static let l = KeyboardButton(KEY_L)
	static let m = KeyboardButton(KEY_M)
	static let n = KeyboardButton(KEY_N)
	static let o = KeyboardButton(KEY_O)
	static let p = KeyboardButton(KEY_P)
	static let q = KeyboardButton(KEY_Q)
	static let r = KeyboardButton(KEY_R)
	static let s = KeyboardButton(KEY_S)
	static let t = KeyboardButton(KEY_T)
	static let u = KeyboardButton(KEY_U)
	static let v = KeyboardButton(KEY_V)
	static let w = KeyboardButton(KEY_W)
	static let x = KeyboardButton(KEY_X)
	static let y = KeyboardButton(KEY_Y)
	static let z = KeyboardButton(KEY_Z)

	//MARK: - Number Keys

	static let zero = KeyboardButton(KEY_ZERO)
	static let one = KeyboardButton(KEY_ONE)
	static let two = KeyboardButton(KEY_TWO)
	static let three = KeyboardButton(KEY_THREE)
	static let four = KeyboardButton(KEY_FOUR)
	static let five = KeyboardButton(KEY_FIVE)
	static let six = KeyboardButton(KEY_SIX)
	static let seven = KeyboardButton(KEY_SEVEN)
	static let eight = KeyboardButton(KEY_EIGHT)
	static let nine = KeyboardButton(KEY_NINE)

	//MARK: - Ponctuation Keys

	static let apostrophe = KeyboardButton(KEY_APOSTROPHE)
	static let comma = KeyboardButton(KEY_COMMA)
	static let minus = KeyboardButton(KEY_MINUS)
	static let period = KeyboardButton(KEY_PERIOD)
	static let slash = KeyboardButton(KEY_SLASH)
	static let semicolon = KeyboardButton(KEY_SEMICOLON)
	static let equal = KeyboardButton(KEY_EQUAL)
	static let lbracket = KeyboardButton(KEY_LEFT_BRACKET)
	static let rbracket = KeyboardButton(KEY_RIGHT_BRACKET)
	static let backslash = KeyboardButton(KEY_BACKSLASH)
	static let grave = KeyboardButton(KEY_GRAVE)

	//MARK: - Function Keys

	static let f1 = KeyboardButton(KEY_F1)
	static let f2 = KeyboardButton(KEY_F2)
	static let f3 = KeyboardButton(KEY_F3)
	static let f4 = KeyboardButton(KEY_F4)
	static let f5 = KeyboardButton(KEY_F5)
	static let f6 = KeyboardButton(KEY_F6)
	static let f7 = KeyboardButton(KEY_F7)
	static let f8 = KeyboardButton(KEY_F8)
	static let f9 = KeyboardButton(KEY_F9)
	static let f10 = KeyboardButton(KEY_F10)
	static let f11 = KeyboardButton(KEY_F11)
	static let f12 = KeyboardButton(KEY_F12)

	//MARK: - Whitespace Keys

	static let space = KeyboardButton(KEY_SPACE)
	static let tab = KeyboardButton(KEY_TAB)
	static let enter = KeyboardButton(KEY_ENTER)
	static let escape = KeyboardButton(KEY_ESCAPE)
	static let backspace = KeyboardButton(KEY_BACKSPACE)

	//MARK: - Navigation Keys

	static let home = KeyboardButton(KEY_HOME)
	static let end = KeyboardButton(KEY_END)
	static let insert = KeyboardButton(KEY_INSERT)
	static let delete = KeyboardButton(KEY_DELETE)
	static let pageUp = KeyboardButton(KEY_PAGE_UP)
	static let pageDown = KeyboardButton(KEY_PAGE_DOWN)

	//MARK: - Arrow Keys

	static let left = KeyboardButton(KEY_LEFT)
	static let right = KeyboardButton(KEY_RIGHT)
	static let up = KeyboardButton(KEY_UP)
	static let down = KeyboardButton(KEY_DOWN)

	//MARK: - Numpad Keys

	static let kp0 = KeyboardButton(KEY_KP_0)
	static let kp1 = KeyboardButton(KEY_KP_1)
	static let kp2 = KeyboardButton(KEY_KP_2)
	static let kp3 = KeyboardButton(KEY_KP_3)
	static let kp4 = KeyboardButton(KEY_KP_4)
	static let kp5 = KeyboardButton(KEY_KP_5)
	static let kp6 = KeyboardButton(KEY_KP_6)
	static let kp7 = KeyboardButton(KEY_KP_7)
	static let np8 = KeyboardButton(KEY_KP_8)
	static let kp9 = KeyboardButton(KEY_KP_9)
	static let kpDecimal = KeyboardButton(KEY_KP_DECIMAL)
	static let kpDivide = KeyboardButton(KEY_KP_DIVIDE)
	static let kpMultiply = KeyboardButton(KEY_KP_MULTIPLY)
	static let kpSubtract = KeyboardButton(KEY_KP_SUBTRACT)
	static let kpAdd = KeyboardButton(KEY_KP_ADD)
	static let kpEnter = KeyboardButton(KEY_KP_ENTER)
	static let kpEqual = KeyboardButton(KEY_KP_EQUAL)

	//MARK: - Modifier Keys

	static let shift = KeyboardMirroredButton(KEY_LEFT_SHIFT, KEY_RIGHT_SHIFT)
	static let control = KeyboardMirroredButton(KEY_LEFT_CONTROL, KEY_RIGHT_CONTROL)
	static let `super` = KeyboardMirroredButton(KEY_LEFT_SUPER, KEY_RIGHT_SUPER)
	static let alt = KeyboardMirroredButton(KEY_LEFT_ALT, KEY_RIGHT_ALT)

	//MARK: - Miscellaneous Keys

	static let capsLock = KeyboardButton(KEY_CAPS_LOCK)
	static let numLock = KeyboardButton(KEY_NUM_LOCK)
	static let scrollLock = KeyboardButton(KEY_SCROLL_LOCK)
	static let printScreen = KeyboardButton(KEY_PRINT_SCREEN)
	static let pause = KeyboardButton(KEY_PAUSE)
	
	static let back = KeyboardButton(KEY_BACK)
	static let menu = KeyboardButton(KEY_MENU)
	static let keyboardMenu = KeyboardButton(KEY_KB_MENU)
	static let volumeUp = KeyboardButton(KEY_VOLUME_UP)
	static let volumeDown = KeyboardButton(KEY_VOLUME_DOWN)
	
}
