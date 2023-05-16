//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-26.
//

import CRaylib

//MARK: - Texture Filter

public enum TextureFilter {
	
	//MARK: Cases
	
	/// No filter, just pixel approximation
	case point
	
	/// Linear filtering
	case bilinear
	
	/// Trilinear filtering (linear with mipmaps)
	case trilinear
	
	/// Anisotropic filtering 4x
	case anisotropic4x
	
	/// Anisotropic filtering 8x
	case anisotropic8x
	
	/// Anisotropic filtering 16x
	case anisotropic16x
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: UInt32 {
		switch self {
		case .point: return TEXTURE_FILTER_POINT.rawValue
		case .bilinear: return TEXTURE_FILTER_BILINEAR.rawValue
		case .trilinear: return TEXTURE_FILTER_TRILINEAR.rawValue
		case .anisotropic4x: return TEXTURE_FILTER_ANISOTROPIC_4X.rawValue
		case .anisotropic8x: return TEXTURE_FILTER_ANISOTROPIC_8X.rawValue
		case .anisotropic16x: return TEXTURE_FILTER_ANISOTROPIC_16X.rawValue
		}
	}
	
}

//MARK: - Texture Wrap

public enum TextureWrap: Int32 {
	
	//MARK: Cases
	
	/// Repeats texture in tiled mode
	case `repeat`
	
	/// Clamps texture to edge pixel in tiled mode
	case clamp
	
	/// Mirrors and repeats the texture in tiled mode
	case mirroredRepeat
	
	/// Mirrors and clamps to border the texture in tiled mode
	case mirroredClamp
	
	//MARK: Computed Properties
	
	@inlinable public var toRaylib: UInt32 {
		switch self {
		case .repeat: return TEXTURE_WRAP_REPEAT.rawValue
		case .clamp: return TEXTURE_WRAP_CLAMP.rawValue
		case .mirroredRepeat: return TEXTURE_WRAP_MIRROR_REPEAT.rawValue
		case .mirroredClamp: return TEXTURE_WRAP_MIRROR_CLAMP.rawValue
		}
	}
	
}
