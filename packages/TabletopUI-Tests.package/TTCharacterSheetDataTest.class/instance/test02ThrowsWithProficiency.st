testing
test02ThrowsWithProficiency

	self assert: (self characterSheet athletics = -1).
	self assert: (self characterSheet acrobatics = 0).
	self assert: (self characterSheet medicine = -2)

