fight
proceedToNextPlayer

	| newPlayer |
	newPlayer := self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first].
	self contextManager updateCurrentPlayer: newPlayer.
	^self nextPlayerMessageString