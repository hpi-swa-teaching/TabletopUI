testing-death-saves
test43HitDiceIncrement

	self characterSheet currentHitDice: 0.
	self characterSheet incrementHitDice.
	self assert: self characterSheet currentHitDice equals: 1

