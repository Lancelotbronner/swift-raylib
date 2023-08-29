//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

//MARK: - Button

public protocol Button {
	
	/// Wether the button was pressed this frame
	var isPressed: Bool { get }
	
	/// Wether the button was released this frame
	var isReleased: Bool { get }
	
	/// Wether the button is currently being held down
	var isDown: Bool { get }
	
	/// Wether the button is currently uninteracted with
	var isUp: Bool { get }
	
}

//MARK: - Sequence Integration

extension Sequence where Element: Button {
	
	/// Wether any of the buttons were pressed this frame
	public var anyPressed: Bool {
		contains(where: \.isPressed)
	}
	
	/// Wether any of the buttons were released this frame
	public var anyReleased: Bool {
		contains(where: \.isReleased)
	}
	
	/// Wether any of the buttons are currrently being held down
	public var anyDown: Bool {
		contains(where: \.isDown)
	}
	
	/// Wether any of the buttons are currrently uninteracted with
	public var anyUp: Bool {
		contains(where: \.isUp)
	}
	
	/// Wether all the buttons were pressed this frame
	public var allPressed: Bool {
		allSatisfy(\.isPressed)
	}
	
	/// Wether all the buttons were released this frame
	public var allReleased: Bool {
		allSatisfy(\.isReleased)
	}
	
	/// Wether all the buttons are currrently being held down
	public var allDown: Bool {
		allSatisfy(\.isDown)
	}
	
	/// Wether all the buttons are currrently uninteracted with
	public var allUp: Bool {
		allSatisfy(\.isUp)
	}
	
	
}
