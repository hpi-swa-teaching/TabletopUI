testing
test01StartInitiative

	self context gameState: #default.
	self command executeStart: self context from: self character.
	self assert: (self context hasBeenExecuted: #startFight)