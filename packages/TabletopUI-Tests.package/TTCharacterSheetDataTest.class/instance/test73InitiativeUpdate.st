testing-combat
test73InitiativeUpdate

	self characterSheet abilitiesAt: #dexterity put: 14.
	self assert: self characterSheet initiative equals: '2'