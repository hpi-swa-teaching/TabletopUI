testing
test07ValidateAllNames

	self assert: self characterAdministration validateAllNames.
	self characterAdministration addPlayer: (TTCharacter newWithName: 'Pia' role: TTCharacter player).
	self deny: self characterAdministration validateAllNames