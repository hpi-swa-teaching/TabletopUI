testing
test06IsNameLengthInvalid

	self deny: (self characterAdministration isNameLengthInvalid: 'Peter').
	self assert: (self characterAdministration isNameLengthInvalid: 'Piaaaaaaaaaaaaaaaaaaaaaaaa') 