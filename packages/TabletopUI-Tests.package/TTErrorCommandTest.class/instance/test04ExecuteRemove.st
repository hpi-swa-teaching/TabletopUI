testing
test04ExecuteRemove

	| result |
	result := command executeRemove: self context from: self character.
	self assert: self errorMessage equals: result errorMessage