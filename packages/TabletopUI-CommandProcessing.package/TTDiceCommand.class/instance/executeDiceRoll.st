execution
executeDiceRoll

	self negated ifTrue: [self type: -1 * self type].
	self diceRoll: (TTDiceRoll newWithRollCount: self count diceSize: self type modifier: 0)