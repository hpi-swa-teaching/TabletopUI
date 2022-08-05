testing
test04InvalidStateDefault

	| result |
	self context gameState: #default.
	result := command executeEnd: self context from: self character.
	
	self assert: self context wrongContextErrorString equals: result errorMessage