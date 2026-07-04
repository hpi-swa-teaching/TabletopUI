fight
proceedToNextPlayer

	| newPlayer |
	newPlayer := self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first].
	self manager updateCurrentPlayer: newPlayer.
	^self nextPlayerMessageString