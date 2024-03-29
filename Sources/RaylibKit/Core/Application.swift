//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-01.
//

import raylib

public struct Application {
	
	/// Wether the application should keep running
	@inlinable public static var isRunning: Bool {
		!WindowShouldClose()
	}

	//MARK: - Configuration

	// TODO: Set config flags
	// void SetConfigFlags(unsigned int flags);			// Setup init configuration flags (view FLAGS)

	/// Set target FPS (maximum)
	@inlinable public static func target(fps: Int) {
		SetTargetFPS(fps.toInt32)
	}

	//MARK: - Quitting

	/// Quit the application
	@inlinable public static func quit() {
		Window.close()
	}
	
	/// Set a custom key to exit program (default is ESC)
	@inlinable public static func quit(on key: KeyboardButton) {
		SetExitKey(key.keycode)
	}
	
	/// Removes the quit shortcut, you'll have to manually quit the application
	@inlinable public static func clearQuitShortcut() {
		SetExitKey(KeyboardButton.null.keycode)
	}
	
	//MARK: - main
	
	@inlinable public static func main(_ step: () -> Void) {
		while Application.isRunning {
			step()
		}
	}
	
}
