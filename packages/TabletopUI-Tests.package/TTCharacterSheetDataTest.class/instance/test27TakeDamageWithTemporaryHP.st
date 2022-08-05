testing-heal-damage
test27TakeDamageWithTemporaryHP

	self characterSheet gainTemporaryHP: 10.
	self characterSheet takeDamage: 5.
	self assert: self characterSheet currentHP = '20'.
	self assert: self characterSheet temporaryHP = '5'
	
	

