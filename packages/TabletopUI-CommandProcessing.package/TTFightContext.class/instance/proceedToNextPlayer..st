fight
proceedToNextPlayer: aTTCharacter

	
	aTTCharacter name = self currentPlayer name ifTrue: [^ self proceedToNextPlayer].
	^ self onlyCurrentPlayerErrorString