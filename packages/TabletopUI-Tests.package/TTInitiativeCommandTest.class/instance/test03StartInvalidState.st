testing
test03StartInvalidState

	| result |
	self context gameState: #initiative.
	result := command executeStart: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage.
	
	self context gameState: #fight.
	result := command executeStart: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage