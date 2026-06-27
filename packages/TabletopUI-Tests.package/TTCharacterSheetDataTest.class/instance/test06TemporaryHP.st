testing-health
test06TemporaryHP

	self characterSheet gainTemporaryHP: 10.
	self assert: self characterSheet temporaryHP equals: '10'.
	self characterSheet gainTemporaryHP: 5.
	self assert: self characterSheet temporaryHP equals: '15'
	

