//
//  Window.swift
//  swift-raylib
//
//  Created by Christophe Bronner on 2021-09-01.
//

import raylib

public struct Window {}

public extension Window {

	//MARK: - Creation

	/// Initialize window and OpenGL context
	///
	/// - Parameters:
	///   - width: The width of the window
	///   - height: The height of the window
	///   - title: The title of the window
	@inlinable static func create(_ width: Int = 0, by height: Int = 0, title: String) {
		assert(!isReady, "Cannot initialize window if it is already initialized")
		InitWindow(width.toInt32, height.toInt32, title)
	}

	/// Check if window has been initialized successfully
	@inlinable static var isReady: Bool {
		IsWindowReady()
	}

	/// Get native window handle
	@inlinable static var handle: UnsafeMutableRawPointer {
		GetWindowHandle()
	}

	/// Close window and unload OpenGL context
	@inlinable static func close() {
		CloseWindow()
	}

	//MARK: - Fullscreen Mode

	/// Check if window is currently fullscreen; Toggle window state: fullscreen/windowed (only `PLATFORM_DESKTOP`)
	@inlinable static var isFullscreen: Bool {
		get { IsWindowFullscreen() }
		set {
			guard newValue != isFullscreen else { return }
			ToggleFullscreen()
		}
	}

	/// Set monitor for the current window (fullscreen mode)
	@inlinable static func assign(to monitor: Monitor) {
		SetWindowMonitor(monitor.rawValue)
	}

	//MARK: - Configuration

	/// Set window configuration state
	@inlinable static func enable(_ state: ConfigurationFlags...) {
		state.reduced.enable()
	}

	/// Clear window configuration state
	@inlinable static func disable(_ state: ConfigurationFlags...) {
		state.reduced.disable()
	}

	/// Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
	@inlinable static func maximize() {
		MaximizeWindow()
	}

	/// Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
	@inlinable static func minimize() {
		MinimizeWindow()
	}

	/// Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
	@inlinable static func restore() {
		RestoreWindow()
	}

	//MARK: - Presentation

	/// Set title for window (only PLATFORM_DESKTOP)
	@inlinable static func rename(to title: String) {
		SetWindowTitle(title)
	}

	/// Set icon for window
	@inlinable static func icon(_ image: Image) {
		SetWindowIcon(image.rawValue)
	}

	//MARK: - Frame

	/// Get current screen as a rectangular frame
	@inlinable static var frame: Rectangle {
		get { Rectangle(at: position, size: size) }
		set {
			position = newValue.position
			size = newValue.size
		}
	}

	/// Get window scale DPI factor
	@inlinable static var scaleDPI: Vector2 {
		Vector2(rawValue: GetWindowScaleDPI())
	}

	//MARK: - Size

	/// Check if window has been resized last frame
	@inlinable static var wasResized: Bool {
		IsWindowResized()
	}

	/// Get current screen width
	@inlinable static var width: Int {
		get { GetScreenWidth().toInt }
		set { SetWindowSize(newValue.toInt32, GetScreenHeight()) }
	}

	/// Get current screen height
	@inlinable static var height: Int {
		get { GetScreenHeight().toInt }
		set { SetWindowSize(GetScreenWidth(), newValue.toInt32) }
	}

	/// Get current screen size
	@inlinable static var size: Vector2 {
		get { Vector2(width.toFloat, height.toFloat) }
		set { SetWindowSize(newValue.x.toInt32, newValue.y.toInt32) }
	}

	/// Set window dimensions
	@inlinable static func resize(to width: Int, by height: Int) {
		SetWindowSize(width.toInt32, height.toInt32)
	}
	
	/// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
	@inlinable static func resize(minimum width: Int, by height: Int) {
		SetWindowMinSize(width.toInt32, height.toInt32)
	}

	//MARK: - Position

	/// Get window position X on monitor
	@inlinable static var x: Int {
		get { position.x.toInt }
		set { SetWindowPosition(newValue.toInt32, position.y.toInt32) }
	}

	/// Get window position Y on monitor
	@inlinable static var y: Int {
		get { position.y.toInt }
		set { SetWindowPosition(position.x.toInt32, newValue.toInt32) }
	}

	/// Get window position XY on monitor
	@inlinable static var position: Vector2 {
		get { Vector2(rawValue: GetWindowPosition()) }
		set { SetWindowPosition(newValue.x.toInt32, newValue.y.toInt32) }
	}

	/// Set window position on screen (only PLATFORM_DESKTOP)
	@inlinable static func place(at x: Int, _ y: Int) {
		SetWindowPosition(x.toInt32, y.toInt32)
	}

	//MARK: - Visibility

	/// Check if window is currently hidden (only `PLATFORM_DESKTOP`)
	@inlinable static var isHidden: Bool {
		IsWindowHidden()
	}

	/// Check if window is currently minimized (only `PLATFORM_DESKTOP`)
	@inlinable static var isMinimized: Bool {
		get { IsWindowMinimized() }
		set { (newValue ? MinimizeWindow : RestoreWindow)() }
	}

	/// Check if window is currently maximized (only `PLATFORM_DESKTOP`)
	@inlinable static var isMaximized: Bool {
		get { IsWindowMaximized() }
		set { (newValue ? MaximizeWindow : RestoreWindow)() }
	}

	/// Check if window is currently focused (only `PLATFORM_DESKTOP`)
	@inlinable static var isFocused: Bool {
		IsWindowFocused()
	}

}
