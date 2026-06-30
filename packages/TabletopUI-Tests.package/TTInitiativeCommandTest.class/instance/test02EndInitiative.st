testing
test02EndInitiative

	self context gameState: #initiative.
	self command executeEnd: self context from: self character.
	self assert: (self context hasBeenExecuted: #endInitiativePhase)