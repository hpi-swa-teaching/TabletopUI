testing
test03InvalidState

	| result |
	self context gameState: #default.
	result := command executeEnd: self context from: self character.
	
	self assert: self context wrongContextErrorString equals: result errorMessage.
	

	self context gameState: #fight.
	result := command executeStart: self context from: self character.
	
	self assert: self context wrongContextErrorString equals: result errorMessage.