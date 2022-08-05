testing
test02ExecuteEnd

	| result |
	result := command executeEnd: self context from: self character.
	self assert: self errorMessage equals: result errorMessage