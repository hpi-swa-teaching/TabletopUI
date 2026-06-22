testing-death-saves
test46HitDiceDecrementOutOfBounds

	self characterSheet hitDiceRemaining: 0.
	self characterSheet spendHitDie.
	self assert: self characterSheet hitDiceRemaining equals: 0
