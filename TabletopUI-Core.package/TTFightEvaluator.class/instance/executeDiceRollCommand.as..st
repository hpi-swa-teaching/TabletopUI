input evaluation
executeDiceRollCommand: aString as: aTTPlayer

	| diceRoll |
	
	(self currentPlayer = aTTPlayer) ifFalse: [
		^ 'FIGHT: ' , (self handleInvalidRollFrom: aTTPlayer)].
	diceRoll := self diceRollFromInput: aString.		
	(diceRoll isValid) ifFalse: [
		^ 'FIGHT: ' , (self ErrorInvalidDiceSize: diceRoll size)].
	self proceedToNextPlayer.
	^ 'FIGHT: ' , diceRoll