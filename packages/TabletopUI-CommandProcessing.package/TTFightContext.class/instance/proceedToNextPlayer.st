fight
proceedToNextPlayer

	| newPlayer |
	newPlayer := self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first].
	self currentPlayer: newPlayer. "The parser doesnt update fast enough, which is why this is invoked twice"
	self parser updateCurrentPlayer: newPlayer.
	^self nextPlayerMessageString