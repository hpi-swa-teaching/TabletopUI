accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyGameState put: self gameState;
		yourself