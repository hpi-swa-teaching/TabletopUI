testing
test01StartFight

	| result |
	self context gameState: #default.
	result := command executeStart: self context from: self character.
	
	self assert: (self context hasBeenExecuted: #startFight).
	self assert: self character equals: self context lastCaller