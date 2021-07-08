fight
removePlayer: aTTCharacter

	(self currentPlayer = aTTCharacter) ifTrue: [
		self proceedToNextPlayer].
	self
		fightingPlayers remove: aTTCharacter;
		changed: #fightingPlayersNames