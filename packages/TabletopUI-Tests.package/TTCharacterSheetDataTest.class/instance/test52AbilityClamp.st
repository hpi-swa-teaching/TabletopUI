testing - abilities
test52AbilityClamp

	self characterSheet abilitiesAt: #strength put: -3.
	self assert: (self characterSheet abilitiesAt: #strength) = '1'.
	self characterSheet abilitiesAt: #intelligence put: 35.
	self assert: (self characterSheet abilitiesAt: #intelligence) = '30'