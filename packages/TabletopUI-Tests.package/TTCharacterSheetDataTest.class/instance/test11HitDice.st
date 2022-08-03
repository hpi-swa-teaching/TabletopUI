testing-death-saves
test11HitDice

	self assert: self characterSheet currentHitDice equals: self characterSheet level.
	self characterSheet decrementHitDice.
	self assert: self characterSheet currentHitDice equals: self characterSheet level -1.
	self characterSheet incrementHitDice.
	self assert: self characterSheet currentHitDice equals: self characterSheet level.
	self characterSheet decrementHitDice.
	self characterSheet resetHitDice.
	self assert: self characterSheet currentHitDice equals: self characterSheet level

