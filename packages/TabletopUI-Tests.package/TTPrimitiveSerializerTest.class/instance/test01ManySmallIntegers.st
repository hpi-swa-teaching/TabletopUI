testing
test01ManySmallIntegers

	0
		to: 2000
		do: [:i | self assert: (TTSerializer deSerializeInt: (TTSerializer serializeInt: i)) = i]