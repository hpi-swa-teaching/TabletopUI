testing-death-saves
test45HitDiceIncrementOutOfBounds

	self characterSheet incrementHitDice.
	self assert: self characterSheet currentHitDice equals: self characterSheet level
