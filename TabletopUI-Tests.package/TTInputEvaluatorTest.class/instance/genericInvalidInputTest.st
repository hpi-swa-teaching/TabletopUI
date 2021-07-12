testing
genericInvalidInputTest

	self invalidInputs do: [:aString | 
		self assert: (self evaluator evaluateInput: aString from: self randomPlayer) 
			equals: self evaluator messageCommandNotFound]