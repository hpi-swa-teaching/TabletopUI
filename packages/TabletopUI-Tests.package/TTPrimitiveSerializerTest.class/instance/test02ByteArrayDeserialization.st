as yet unclassified
test02ByteArrayDeserialization

	self assert: (TTPrimitiveSerializer deSerializeInt: #[16 0 0 0]) = 16