testing
test02EndFight

	| result |
	self context gameState: #fight.
	result := self command executeEnd: self context from: self character.
	
	self assert: (self context hasBeenExecuted: #endFight).
	self assert: self character equals: self context lastCaller