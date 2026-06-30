testing
test02ExecuteEnd

	| result |
	result := self command executeEnd: self context from: self character.
	self assert: self errorMessage equals: result errorMessage