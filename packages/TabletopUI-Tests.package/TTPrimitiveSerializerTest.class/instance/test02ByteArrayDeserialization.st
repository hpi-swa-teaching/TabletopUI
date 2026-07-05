testing
test02ByteArrayDeserialization

	self runRandomizedTest: [ | bytes |
		bytes := ByteArray new: 4.
		bytes at: 1 put: self randomOneByteInteger.
		bytes at: 2 put: self randomOneByteInteger.
		bytes at: 3 put: self randomOneByteInteger.
		bytes at: 4 put: self randomOneByteInteger.
		self assert: (TTSerializer deSerializeInt: bytes) = ((bytes at: 1) + (256 * (bytes at: 2)) + (256 * 256 * (bytes at: 3)) + (256 * 256 * 256 * (bytes at: 4)))]