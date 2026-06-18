as yet unclassified
test02ByteArrayDeserialization

	self assert: (TTSerializer deSerializeInt: #[16 0 0 0]) = 16