state
getState

	| rollsByName |
	rollsByName := Dictionary new.
	self rolls associationsDo: [:assoc |
		rollsByName at: assoc key name put: assoc value].

	^ Dictionary new
		at: TTGameStateKeys keyGameState put: self gameState;
		at: TTGameStateKeys keyRolls put: rollsByName;
		yourself