testing-death-saves
test46HitDiceDecrementOutOfBounds

	self characterSheet currentHitDice: 0.
	self characterSheet decrementHitDice.
	self assert: self characterSheet currentHitDice equals: 0
