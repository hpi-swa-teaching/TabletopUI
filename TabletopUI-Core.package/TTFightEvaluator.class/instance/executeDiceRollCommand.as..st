input evaluation
executeDiceRollCommand: aString as: aTTCharacter

	| diceRoll |
	
	(self currentPlayer = aTTCharacter) ifFalse: [
		^ 'FIGHT: ' , (self handleInvalidRollFrom: aTTCharacter)].
	diceRoll := self diceRollFromInput: aString.		
	(diceRoll isValid) ifFalse: [
		^ 'FIGHT: ' , (self messageInvalidDiceSize: diceRoll size)].
	self proceedToNextPlayer.
	^ 'FIGHT: ' , diceRoll