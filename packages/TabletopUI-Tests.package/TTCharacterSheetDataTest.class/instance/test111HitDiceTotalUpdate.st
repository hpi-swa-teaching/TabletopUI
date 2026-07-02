testing-combat
test111HitDiceTotalUpdate

	self assert: self characterSheet hitDiceTotal equals: '1'.
	self characterSheet experiencePoints: 6500.
	self assert: self characterSheet hitDiceTotal equals: '5'.