fight
proceedToNextPlayer

	self currentPlayer: (
		self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first]).
	^self nextPlayerMessageString