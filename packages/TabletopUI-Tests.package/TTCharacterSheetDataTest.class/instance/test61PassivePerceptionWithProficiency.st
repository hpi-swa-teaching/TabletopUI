testing - skills
test61PassivePerceptionWithProficiency

	self characterSheet skillsLookupAt: #perception put: 1.
	self assert: self characterSheet passivePerception = '12'