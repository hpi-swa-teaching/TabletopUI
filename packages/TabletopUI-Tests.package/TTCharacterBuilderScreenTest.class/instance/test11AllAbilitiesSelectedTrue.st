as yet unclassified
test11AllAbilitiesSelectedTrue

	(self screen choices at: #abilities )
		at: #strength put: 8;
		at: #dexterity put: 10;
		at: #constitution put: 12;
		at: #intelligence put: 13;
		at: #wisdom put: 14;
		at: #charisma put: 15.
	self assert: self screen allAbilitiesSelected