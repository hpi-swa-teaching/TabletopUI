as yet unclassified
test01ManySmallIntegers

	0
		to: 2000
		do: [:i | self assert: (TTPrimitiveSerializer deSerializeInt: (TTPrimitiveSerializer serializeInt: i)) = i]