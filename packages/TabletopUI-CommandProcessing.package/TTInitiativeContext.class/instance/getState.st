state
getState

	^ Dictionary new
		at: TTGameStateKeys keyGameState put: self gameState;
		at: TTGameStateKeys keyRolls put: self rolls;
		yourself