testing-heal-damage
test28TakeDamageOverTemporaryHP

	self characterSheet gainTemporaryHP: 10.
	self characterSheet takeDamage: 15.
	self assert: self characterSheet currentHP = '15'.
	self assert: self characterSheet temporaryHP = '0'
	
	

