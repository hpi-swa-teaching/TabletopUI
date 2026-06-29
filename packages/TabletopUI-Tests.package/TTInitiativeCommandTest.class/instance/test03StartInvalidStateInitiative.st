testing
test03StartInvalidStateInitiative

	| result |
	
	self context gameState: #initiative.
	result := self command executeStart: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage