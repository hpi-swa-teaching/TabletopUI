testing-death-saves
test11HitDice

	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level.
	self characterSheet spendHitDie.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level -1.
	self characterSheet gainHitDie.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level.
	self characterSheet spendHitDie.
	self characterSheet resetHitDice.
	self assert: self characterSheet hitDiceRemaining equals: self characterSheet level

