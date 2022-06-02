fight
proceedToNextPlayer

	self currentPlayer: (
		self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first]).
	^'FIGHT: Next up is ', self currentPlayer name