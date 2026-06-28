fight
removePlayer: aTTCharacterName from: aPerformingTTCharacter

	aPerformingTTCharacter isGamemaster ifFalse: [^ self onlyGMIsAllowedMessageString].
	self currentPlayer = aTTCharacterName ifTrue: [self proceedToNextPlayer].
	self fightingPlayers do: [:aPlayerName |
		aPlayerName = aTTCharacterName ifTrue: [
			self parser updatePlayerRemoval: aTTCharacterName.
			^ self playerRemovedMessageString: aTTCharacterName]]