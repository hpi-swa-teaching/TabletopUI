execution
executeDiceRoll

	negated ifTrue: [self type: -1 * self type].
	^TTDiceRoll newWithRollCount: count diceSize: type modifier: 0