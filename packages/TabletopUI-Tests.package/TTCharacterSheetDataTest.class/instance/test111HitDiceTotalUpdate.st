testing-combat
test111HitDiceTotalUpdate

	self assert: self characterSheet hitDiceTotal = '1'.
	self characterSheet experiencePoints: 6500.
	self assert: self characterSheet hitDiceTotal = '5'.