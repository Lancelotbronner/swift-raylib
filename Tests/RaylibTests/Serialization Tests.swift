    import XCTest
    import Raylib

    final class SerializationTests: XCTestCase {
		
        func testCompression() {
			let source: [UInt8] = [125, 123, 23, 234, 12, 46]
			let result = source.withUnsafeBufferPointer { buffer in
				Serialization.decompress(Serialization.compress(buffer))
			}
			print(source)
			print(Array(result))
        }
		
    }
