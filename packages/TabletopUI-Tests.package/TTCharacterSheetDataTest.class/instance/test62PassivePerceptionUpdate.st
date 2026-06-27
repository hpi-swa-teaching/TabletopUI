testing - skills
test62PassivePerceptionUpdate

	self characterSheet abilitiesAt: #wisdom put: 14.
	self assert: self characterSheet passivePerception equals: '12'