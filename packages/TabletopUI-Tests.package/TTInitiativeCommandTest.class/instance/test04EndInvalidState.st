testing
test04EndInvalidState

	| result |
	self context gameState: #default.
	result := command executeEnd: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage.

	self context gameState: #fight.
	result := command executeEnd: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage
	