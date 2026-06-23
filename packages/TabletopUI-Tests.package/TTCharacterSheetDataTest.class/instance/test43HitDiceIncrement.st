testing-combat
test43HitDiceIncrement

	self characterSheet hitDiceRemaining: 0.
	self characterSheet gainHitDie.
	self assert: self characterSheet hitDiceRemaining equals: 1

