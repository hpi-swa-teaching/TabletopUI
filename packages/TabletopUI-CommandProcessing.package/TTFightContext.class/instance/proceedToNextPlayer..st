fight
proceedToNextPlayer: aTTCharacter

	
	(aTTCharacter name = self currentPlayer name or: aTTCharacter isGamemaster) ifTrue: [^ self proceedToNextPlayer].
	^ self onlyCurrentPlayerErrorString