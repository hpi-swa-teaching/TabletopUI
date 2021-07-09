testing
test07ValidateAllNames

	self assert: self characterAdministration validateAllNames.
	self characterAdministration addNPC: (TTCharacter newWithName: 'Pia' role: #player).
	self deny: self characterAdministration validateAllNames