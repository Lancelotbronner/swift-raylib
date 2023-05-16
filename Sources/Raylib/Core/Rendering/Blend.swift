//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Blend Modes

public enum Blend {
	
	//MARK: Constants
	
	/// The default blend mode
	public static let `default` = Blend.alpha
	
	//MARK: Cases
	
	/// Blend textures considering alpha (default)
	case alpha
	
	/// Blend textures adding colors
	case additive
	
	/// Blend textures multiplying colors
	case multiplied
	
	/// Blend textures adding colors (alternative)
	case add
	
	/// Blend textures subtracting colors (alternative)
	case subtract

	/// Blend premultiplied textures considering alpha
	case premultiplied
	
	/// Blend textures using custom src/dst factors (use rlSetBlendMode())
	case custom
	// TODO: Implement custom with rlSetBlendMode()
	
	//MARK: Computed Properties
	
	@usableFromInline var toRaylib: UInt32 {
		switch self {
		case .alpha: return BLEND_ALPHA.rawValue
		case .additive: return BLEND_ADDITIVE.rawValue
		case .multiplied: return BLEND_MULTIPLIED.rawValue
		case .add: return BLEND_ADD_COLORS.rawValue
		case .subtract: return BLEND_SUBTRACT_COLORS.rawValue
		case .premultiplied: return BLEND_ALPHA_PREMULTIPLY.rawValue
		case .custom: return BLEND_CUSTOM.rawValue
		}
	}

}
