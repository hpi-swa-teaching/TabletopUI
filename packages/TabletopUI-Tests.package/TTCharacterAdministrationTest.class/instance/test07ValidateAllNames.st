testing
test07ValidateAllNames

	self characterAdministration addPlayer: (TTCharacter newWithName: 'Pia' role: TTCharacter player).
	self deny: self characterAdministration validateAllNames