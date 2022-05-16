testing
test06TemporaryHP

	self assert: (self characterSheet temporaryHP = 0).
	self characterSheet gainTemporaryHP: 10.
	self assert: (self characterSheet temporaryHP = 10).
	self characterSheet takeDamage: 3.
	self assert: (self characterSheet currentHP = 20).
	self assert: (self characterSheet temporaryHP = 7).
	self characterSheet takeDamage: 9.
	self assert: (self characterSheet currentHP = 18).
	self assert: (self characterSheet temporaryHP = 0).
	self characterSheet gainTemporaryHP: 10.
	self characterSheet resetTemporaryHP.
	self assert: (self characterSheet temporaryHP = 0)
	

