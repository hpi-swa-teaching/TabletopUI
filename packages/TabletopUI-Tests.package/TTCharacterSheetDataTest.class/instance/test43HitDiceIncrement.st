testing-death-saves
test43HitDiceIncrement

	self characterSheet hitDiceRemaining: 0.
	self characterSheet incrementHitDice.
	self assert: self characterSheet hitDiceRemaining equals: 1

