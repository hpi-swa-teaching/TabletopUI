testing-death-saves
test45HitDiceIncrementOutOfBounds

	self characterSheet incrementHitDice.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level
