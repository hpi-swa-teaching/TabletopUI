testing
testInvalidInputs: anOrderedCollection

	anOrderedCollection do: [:aString | 
		self assert: (self evaluator evaluateInput: aString from: self players first) 
			equals: self evaluator messageCommandNotFound]