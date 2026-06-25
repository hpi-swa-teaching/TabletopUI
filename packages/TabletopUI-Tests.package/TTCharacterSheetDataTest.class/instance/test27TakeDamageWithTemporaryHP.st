testing-health
test27TakeDamageWithTemporaryHP

	self characterSheet gainTemporaryHP: 10.
	self characterSheet takeDamage: 5.
	self assert: self characterSheet currentHP = '8'.
	self assert: self characterSheet temporaryHP = '5'
	
	

