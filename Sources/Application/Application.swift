//
//  Application.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-01.
//

import raylib

public struct Application { }

public extension Application {

	/// Wether the application should keep running
	@inlinable static var isRunning: Bool {
		!WindowShouldClose()
	}

	//MARK: - Configuration

	// TODO: Set config flags
	// void SetConfigFlags(unsigned int flags);			// Setup init configuration flags (view FLAGS)

	/// Set target FPS (maximum)
	@inlinable static func target(fps: Int) {
		SetTargetFPS(fps.toInt32)
	}

	//MARK: - Quitting

	/// Quit the application
	@inlinable static func quit() {
		Window.close()
	}
	
	/// Set a custom key to exit program (default is ESC)
	@inlinable static func quit(on key: KeyboardButton) {
		SetExitKey(key.keycode)
	}
	
	/// Removes the quit shortcut, you'll have to manually quit the application
	@inlinable static func clearQuitShortcut() {
		SetExitKey(KeyboardButton.null.keycode)
	}
	
}
