fight
removePlayer: aTTPlayer

	(self currentPlayer = aTTPlayer) ifTrue: [
		self proceedToNextPlayer].
	self fightingPlayers remove: aTTPlayer.
	self changed: #fightingPlayersNames.