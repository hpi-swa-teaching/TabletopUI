testing-health
test28TakeDamageOverTemporaryHP

	self characterSheet gainTemporaryHP: 10.
	self characterSheet takeDamage: 15.
	self assert: self characterSheet currentHP = '3'.
	self assert: self characterSheet temporaryHP = '0'
	
	

