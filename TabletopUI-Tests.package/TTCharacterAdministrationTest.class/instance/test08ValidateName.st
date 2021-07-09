testing
test08ValidateName

	self assert: (self characterAdministration validateName: 'Peter').
	self deny: (self characterAdministration validateName: 'Piaaaaaaaaaaaaaaaaaaaaaaaa')