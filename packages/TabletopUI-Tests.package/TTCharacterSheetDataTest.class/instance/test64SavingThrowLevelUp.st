testing-saving throws
test64SavingThrowLevelUp

	self characterSheet savingThrowsLookupAt: #dexterity put: 1.
	self characterSheet experiencePoints: 0.
	self assert: (self characterSheet savingThrowBonusFor: #dexterity) = 2.
	self characterSheet experiencePoints: 6500.
	self assert: (self characterSheet savingThrowBonusFor: #dexterity) = 3