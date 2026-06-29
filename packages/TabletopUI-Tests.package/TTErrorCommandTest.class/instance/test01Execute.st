testing
test01Execute

	| result |
	result := self command execute: self context from: self character.
	self assert: self errorMessage equals: result errorMessage