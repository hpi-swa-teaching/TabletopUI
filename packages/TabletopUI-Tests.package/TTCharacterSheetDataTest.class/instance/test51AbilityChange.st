testing - abilities
test51AbilityChange

	self characterSheet abilitiesAt: #strength put: 21.
	self assert: (self characterSheet abilitiesAt: #strength) = '21'