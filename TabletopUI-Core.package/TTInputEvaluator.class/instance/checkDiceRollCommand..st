dice roll
checkDiceRollCommand: aString

	| output rollConfigurations |
	
	rollConfigurations := self parseDiceRollCommand: aString.
	(TTDice isValidDice: (rollConfigurations at: #diceSize)) ifTrue: [
		output := self evaluateDiceRollWithConfiguarions: rollConfigurations]
	ifFalse: [
		output := self ErrorInvalidDiceSize:  (rollConfigurations at: #diceSize)].
	
	^ output