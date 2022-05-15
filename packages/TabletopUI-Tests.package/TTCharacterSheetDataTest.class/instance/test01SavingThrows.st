testing
test01SavingThrows

	self assert: (self characterSheet strengthSave = -3).
	self assert: (self characterSheet constitutionSave = 5).
	self assert: (self characterSheet charismaSave = 0)

