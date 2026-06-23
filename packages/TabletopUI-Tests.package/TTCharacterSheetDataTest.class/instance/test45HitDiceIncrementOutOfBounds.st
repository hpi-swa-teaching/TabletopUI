testing-combat
test45HitDiceIncrementOutOfBounds

	self characterSheet gainHitDie.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level
