//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-02.
//

import CRaylib

//MARK: - Time

public struct Time {
	
	//MARK: Computed Properties
	
	/// Get time in seconds for last frame drawn
	@inlinable public static var delta: Float {
		GetFrameTime()
	}
	
	/// Get elapsed time in seconds since InitWindow()
	@inlinable public static var lifetime: Double {
		GetTime()
	}
	
	/// Get current FPS
	@inlinable public static var fps: Int {
		GetFPS().toInt
	}
	
}
