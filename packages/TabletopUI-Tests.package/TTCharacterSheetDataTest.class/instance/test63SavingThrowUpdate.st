testing-saving throws
test63SavingThrowUpdate

	self characterSheet abilitiesAt: #strength put: 14.
	self assert: (self characterSheet savingThrowBonusFor: #strength) equals: 2