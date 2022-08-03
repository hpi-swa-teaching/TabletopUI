testing-heal-damage
test26NegativeTemporaryHP

	self characterSheet gainTemporaryHP: -10.
	self assert: (self characterSheet temporaryHP = '0')
	

