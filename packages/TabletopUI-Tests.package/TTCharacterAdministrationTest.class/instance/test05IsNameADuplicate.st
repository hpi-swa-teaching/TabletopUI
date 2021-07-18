testing
test05IsNameADuplicate

	self deny: (self characterAdministration isNameADuplicate: 'Peter').
	self assert: (self characterAdministration isNameADuplicate: 'Pia') 