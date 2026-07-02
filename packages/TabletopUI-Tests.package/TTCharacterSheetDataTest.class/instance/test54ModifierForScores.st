testing - abilities
test54ModifierForScores
	
	self characterSheet abilitiesAt: #constitution put: 14.
	self assert: (self characterSheet modifierOf: #constitution) equals: 2.
	self characterSheet abilitiesAt: #wisdom put: 20.
	self assert: (self characterSheet modifierOf: #wisdom) equals: 5.
	self characterSheet abilitiesAt: #dexterity put: 1.
	self assert: (self characterSheet modifierOf: #dexterity) equals: -5