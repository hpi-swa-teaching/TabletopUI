fight
removePlayer: aTTCharacter from: aPerformingTTCharacter

	aPerformingTTCharacter isGamemaster ifFalse: [
		^self onlyGMIsAllowedMessageString].
	(self currentPlayer = aTTCharacter) ifTrue: [
		self proceedToNextPlayer].
	self fightingPlayers remove: aTTCharacter.
	self changed: #fightingPlayersNames.
	^self playerRemovedMessageString: aTTCharacter