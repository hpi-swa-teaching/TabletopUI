testing
test09EndInitiativeNotReady

	| result gm |
	gm := TTCharacter new
		role: #gamemaster;
		yourself.
	result := self context endInitiativePhaseFrom: gm.
	self assert: self context initiativeNotReadyErrorString equals: result.
	self assert: #initiative equals: self parser context gameState