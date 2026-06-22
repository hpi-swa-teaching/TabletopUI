testing-health
test66RestRestoresHitDice

	self characterSheet experiencePoints: 6500.
	self characterSheet hitDiceRemaining: 0.
	self characterSheet rest.
	self assert: self characterSheet hitDiceRemaining = 2