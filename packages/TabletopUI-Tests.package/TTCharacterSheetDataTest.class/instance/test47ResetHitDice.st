testing-death-saves
test47ResetHitDice

	self characterSheet currentHitDice: 0.
	self characterSheet resetHitDice.
	self assert: self characterSheet currentHitDice equals: self characterSheet level
