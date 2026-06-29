testing
test44HitDiceDecrement

	self characterSheet decrementHitDice.
	self assert: self characterSheet currentHitDice equals: self characterSheet level -1
