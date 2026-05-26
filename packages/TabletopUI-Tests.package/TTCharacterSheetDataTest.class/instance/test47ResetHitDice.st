testing-death-saves
test47ResetHitDice

	self characterSheet hitDiceRemaining: 0.
	self characterSheet resetHitDice.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level
