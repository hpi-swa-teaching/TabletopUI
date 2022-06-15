fight
proceedToNextPlayer: aTTCharacter

	(aTTCharacter = self currentPlayer) ifTrue: [
		^ self proceedToNextPlayer].