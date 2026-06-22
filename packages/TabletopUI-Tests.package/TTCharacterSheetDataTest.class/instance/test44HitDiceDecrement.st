testing-death-saves
test44HitDiceDecrement

	self characterSheet spendHitDie.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level -1
