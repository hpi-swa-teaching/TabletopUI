fight
proceedToNextPlayer: aTTCharacter

	
	(aTTCharacter name = self currentPlayer or: aTTCharacter isGamemaster) ifTrue: [^ self proceedToNextPlayer].
	^ self onlyCurrentPlayerErrorString