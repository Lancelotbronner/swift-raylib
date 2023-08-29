//
//  File.swift
//  File
//
//  Created by Christophe Bronner on 2021-09-04.
//

//MARK: - Collection

extension Collection where Index == Int {
	
	@inlinable public func cycle(after i: Index) -> Index {
		index(after: i) % count
	}
	
}

extension BidirectionalCollection where Index == Int {
	
	@inlinable public func cycle(before i: Index) -> Index {
		let tmp = index(before: i)
		return tmp <= 0 ? count - 1 : tmp
	}
	
}

//MARK: - Array

extension Array {
	
	@inlinable public init(repeat count: Int, value next: () -> Element) {
		self.init(unsafeUninitializedCapacity: count) { buffer, total in
			for i in buffer.indices {
				buffer[i] = next()
			}
			total = count
		}
	}
	
	@inlinable public init(repeat count: Int, value: @autoclosure () -> Element) {
		self.init(repeat: count, value: value)
	}
	
}
