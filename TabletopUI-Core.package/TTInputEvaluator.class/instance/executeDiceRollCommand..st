dice roll
executeDiceRollCommand: aString

	| rollConfigurations |
	
	rollConfigurations := self parseDiceRollCommand: aString.
	(TTDice isValidDice: (rollConfigurations at: #diceSize)) ifTrue: [
		^ self evaluateDiceRollWithConfiguarions: rollConfigurations]
	ifFalse: [
		^ self ErrorInvalidDiceSize:  (rollConfigurations at: #diceSize)]
	