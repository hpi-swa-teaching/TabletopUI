accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyGameState put: self gameState;
		at: TTGameStateKeys keyCurrentPlayer put: self currentPlayer;
		at: TTGameStateKeys keyFightingPlayerNames put: self fightingPlayersNames asArray;
		yourself