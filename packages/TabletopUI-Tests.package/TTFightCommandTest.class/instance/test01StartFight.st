testing
test01StartFight

	self context gameState: #default.
	self command executeStart: self context from: self character.
	
	self assert: (self context hasBeenExecuted: #startFight).
	self assert: self character equals: self context lastCaller