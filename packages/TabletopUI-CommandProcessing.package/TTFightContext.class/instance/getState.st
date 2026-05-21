accessing
getState

	^ Dictionary new
		at: #gameState put: self gameState;
		at: #currentPlayer put: self currentPlayer name;
		at: #fightingPlayers put: self fightingPlayers asArray;
		yourself