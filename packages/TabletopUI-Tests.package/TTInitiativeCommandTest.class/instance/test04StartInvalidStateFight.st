testing
test04StartInvalidStateFight

	| result |
	
	self context gameState: #fight.
	result := command executeStart: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage