//
//  File.swift
//  
//
//  Created by Christophe Bronner on 2021-12-29.
//

//MARK: - Memory Manageable

public protocol MemoryManageable {
	
	static func unload(instance: Self)
	
}

extension MemoryManageable {
	
	@inlinable public var toManaged: Managed<Self> {
		Managed(underlying: self)
	}
	
	@inlinable public var toUnmanaged: Unmanaged<Self> {
		Unmanaged(underlying: self)
	}
	
}

//MARK: - Unmanaged

public struct Unmanaged<Subject: MemoryManageable> {
	
	//MARK: Properties
	
	@usableFromInline var underlying: Subject
	
	//MARK: Computed Properties
	
	@inlinable public var raylib: Subject {
		get { underlying }
		set { underlying = newValue }
	}
	
	//MARK: Initialization
	
	@usableFromInline init(underlying value: Subject) {
		underlying = value
	}
	
}

//MARK: - Managed

public final class Managed<Subject: MemoryManageable> {
	
	//MARK: Properties
	
	@usableFromInline var underlying: Subject
	
	//MARK: Computed Properties
	
	@inlinable public var raylib: Subject {
		get { underlying }
		set { underlying = newValue }
	}
	
	//MARK: Initialization
	
	@usableFromInline init(underlying value: Subject) {
		underlying = value
	}
	
	deinit {
		Subject.unload(instance: underlying)
	}
	
}
