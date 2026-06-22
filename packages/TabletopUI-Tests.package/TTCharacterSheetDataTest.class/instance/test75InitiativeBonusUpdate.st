testing-combat
test75InitiativeBonusUpdate

	self characterSheet initiativeBonus: 5.
	self characterSheet abilitiesAt: #dexterity put: 14.
	self assert: self characterSheet initiative = '7'