fight
proceedToNextPlayer

	| newPlayer |
	newPlayer := self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first].
	self parser updateCurrentPlayer: newPlayer.
	^self nextPlayerMessageString