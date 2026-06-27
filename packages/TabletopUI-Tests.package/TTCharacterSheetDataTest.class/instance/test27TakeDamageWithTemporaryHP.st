testing-health
test27TakeDamageWithTemporaryHP

	self characterSheet gainTemporaryHP: 10.
	self characterSheet takeDamage: 5.
	self assert: self characterSheet currentHP equals: '8'.
	self assert: self characterSheet temporaryHP equals: '5'
	
	

