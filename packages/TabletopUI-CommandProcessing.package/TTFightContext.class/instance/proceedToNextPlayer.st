fight
proceedToNextPlayer

	| newPlayer |
	newPlayer := self fightingPlayers after: self currentPlayer ifAbsent: [self fightingPlayers first].
	self currentPlayer: newPlayer. "The parser doesnt update fast enough, which is why this is invoked twice"
	self manager updateCurrentPlayer: newPlayer.
	^self nextPlayerMessageString