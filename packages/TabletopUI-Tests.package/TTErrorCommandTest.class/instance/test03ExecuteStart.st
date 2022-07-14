testing
test03ExecuteStart

	| result |
	result := command executeStart: self context from: self character.
	self assert: self errorMessage equals: result errorMessage